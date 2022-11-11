
classdef NK_Landscape
    
    %   This implementation assumes diallelic genes (A=2),
    %   assigns a fitness component to each gene, 
    %   and requires a balanced set of couplings.
        
    properties (Access=private,Constant)
        a_=2; % Number of alleles.
    end
    
    properties (Access=private)
        n_; % The number of genes (and fitness components).
        k_; % The number of non-self couplings.
        depend_; % The epistatic dependency map, one row per component.
        lookup_; % Fast access to genes on which a gene depend.
        weight_; % Fitness component weights/values.
    end

    methods (Static)
        
        function [result]=numberOfGeneticCombinations(n)
            result=NK_Landscape.a_^n;
        end 
        
        function [result]=numberOfCoupledAlleleCombinations(k)
            result=NK_Landscape.numberOfGeneticCombinations(k+1);
        end
        
        function [result]=numberOfFitnessWeights(n,k)
            result=n*NK_Landscape.numberOfCoupledAlleleCombinations(k);
        end
                
        function [genome]=makeGenome(values)
            genome=values(:)';
        end
        
        function [genome]=makeRandomGenome(n)
            genome=randi([0,1],1,n);
        end
        
        function [new_genome]=flipAllele(genome,i)
            new_genome=genome;
            new_genome(i)=1-genome(i);
        end
        
        function [new_genome]=flipGenome(genome)
            new_genome=1-genome;
        end
        
        % Check if an epistatic dependency map is an NK mapping.
        %
        % The NK mapping has one fitness component per gene (M=N), 
        % genes depend on self, and on a constant number (K) of other genes.
        function [is_nk]=isNK(depend)
            depend=(depend~=0);
            [n_component,n_gene]=size(depend);
            is_nk=(n_component==n_gene)&&(n_gene>0);
            ci=1;
            is_nk=(is_nk)&&(depend(ci,ci)~=0);
            k1=nnz(depend(ci,:));
            ci=ci+1;
            while is_nk && ci<=n_component
                is_nk=(is_nk)&&(depend(ci,ci)~=0)&&(k1==nnz(depend(ci,:)));
                ci=ci+1;
            end
        end
        
        % Initialize an NK landscape from given dependencies.
        %
        % [nk]=makeNK_Landscape(dependencies,generator)
        %   dependencies : epistatic dependency map
        %   generator    : pseudo-random number generator or matrices sized [r,c] (default is rand)
        function [nk]=make(dependencies,generator)
            assert(numel(dependencies)>0);
            if nargin<2
                generator=@(r,c) rand(r,c);
            end
            n=size(dependencies,2);
            k=nnz(dependencies(1,:))-1;
            f=NK_Landscape.numberOfFitnessWeights(n,k);
            weights=generator(1,f);
            nk=NK_Landscape(dependencies,weights);
        end
        
    end
    
    
   
    methods

        % Construct an NK landscape.
        %
        % [obj]=NK_Landscape(nk)
        %   nk : the NK landscape to be copied
        %
        % [obj]=NK_Landscape(depends,weights)
        %   depends : an epistatic dependency map satisfying the NK requirements (diagonal and same dependency counts)
        %   weights : the (random) fitness weights, number of elements given by numberOfFitnessWeights
        function [obj]=NK_Landscape(varargin)
            assert(nargin>0);
            if isa(varargin{1},'NK_Landscape')
                nk=varargin{1};
                obj.n_=nk.n_;
                obj.k_=nk.k_;
                obj.depend_=nk.depend_;
                obj.lookup_=nk.lookup_;
                obj.weight_=nk.weight_;
            else
                assert(nargin==2);
                depends=varargin{1};
                weights=varargin{2};
                assert(NK_Landscape.isNK(depends));
                assert(isa(weights,'double'));
                obj.n_=size(depends,2);
                obj.k_=nnz(depends(1,:))-1;
                assert(numel(weights)==NK_Landscape.numberOfFitnessWeights(obj.n_,obj.k_));
                obj.depend_=(depends~=0);
                obj.lookup_=zeros(obj.n_,obj.k_+1);
                obj.weight_=weights(:)';
                for ii=1:obj.n_
                    ki=1;
                    for jj=1:obj.n_
                        if obj.depend_(ii,jj)~=0
                            obj.lookup_(ii,ki)=jj;
                            ki=ki+1;
                        end
                    end
                end
            end
        end

        function [w]=getFitnessWeights(obj)
            w=obj.weight_;
        end
        
        function disp(obj)
            fprintf('NK_Landscape ( n = %d , k = %d ):\n',obj.n_,obj.k_);
            fprintf('  dependencies:\n');
            for i=1:size(obj.depend_,1)
                fprintf('    %s\n',sprintf('%d',obj.depend_(i,:)));
            end
            fprintf('  weights (%d)  = ',numel(obj.weight_));
            fprintf(' %f',obj.weight_);
            fprintf('\n');
        end

        function [n]=numberOfGenes(obj)
            n=obj.n_;
        end

        function [k]=numberOfCouplings(obj)
            k=obj.k_;
        end

        function [depends]=dependencies(obj)
            depends=obj.depend_;
        end

        function [fitness_i]=fitnessComponent(obj,component_index,genome)
            assert(0<component_index<=obj.n_);
            assert(numel(genome)==obj.n_);
            subindex=0;
            for j=1:obj.k_+1
                subindex=2*subindex+(genome(obj.lookup_(component_index,j))~=0);
            end
            index=obj.n_*subindex+component_index;
            fitness_i=obj.weight_(index);
        end

        function [f]=fitness(obj,genome)
            f=0.0;
            for i=1:obj.n_
                f=f+obj.fitnessComponent(i,genome);
            end
            f=f/obj.n_;
        end
        
    end
    
end

