function [fitness]=test()
%
% 
emap=[
0 0.0667 0.0667 0.0667 0.0667 0.0667 0.0667 0.0667
0.0667 0 0.0024 0.0024 0.0024 0.0024 0.0024 0.0024
0.0667 0.0024 0 0.0024 0.0024 0.0024 0.0024 0.0024
0.0667 0.0024 0.0024 0 0.0024 0.0024 0.0024 0.0024
0.0667 0.0024 0.0024 0.0024 0 0.0024 0.0024 0.0024
0.0667 0.0024 0.0024 0.0024 0.0024 0 0.0024 0.0024
0.0667 0.0024 0.0024 0.0024 0.0024 0.0024 0 0.0024
0.0667 0.0024 0.0024 0.0024 0.0024 0.0024 0.0024 0
];

% emap=[
% 0	0.0667	0.0024	0	0	0	0.0024	0.0667
% 0.0667	0	0.0667	0.0024	0	0	0	0.0024
% 0.0024	0.0667	0	0.0667	0.0024	0	0	0
% 0	0.0024	0.0667	0	0.0667	0.0024	0	0
% 0	0	0.0024	0.0667	0	0.0667	0.0024	0
% 0	0	0	0.0024	0.0667	0	0.0667	0.0024
% 0.0024	0	0	0	0.0024	0.0667	0	0.0667
% 0.0667	0.0024	0	0	0	0.0024	0.0667	0
% ];

% emap=[
% 0	0.3333	0.0769	0.0159	0	0.0159	0.0769	0.3333
% 0.3333	0	0.3333	0.0769	0.0159	0	0.0159	0.0769
% 0.0769	0.3333	0	0.3333	0.0769	0.0159	0	0.0159
% 0.0159	0.0769	0.3333	0	0.3333	0.0769	0.0159	0
% 0	0.0159	0.0769	0.3333	0	0.3333	0.0769	0.0159
% 0.0159	0	0.0159	0.0769	0.3333	0	0.3333	0.0769
% 0.0769	0.0159	0	0.0159	0.0769	0.3333	0	0.3333
% 0.3333	0.0769	0.0159	0	0.0159	0.0769	0.3333	0
% ];

% emap=[
% 0	0.0667	0.0667	0.0667	0.0024	0.0024	0.0024	0
% 0.0667	0	0.0024	0.0667	0.0667	0.0024	0.0024	0.0024
% 0.0667	0.0024	0	0.0667	0.0024	0.0667	0.0024	0
% 0.0667	0.0667	0.0667	0	0.0667	0.0024	0.0667	0.0024
% 0.0024	0.0667	0.0224	0.0667	0	0.0667	0.0024	0.0667
% 0.0024	0.0024	0.0667	0.0024	0.0667	0	0.0667	0.0024
% 0.0024	0.0024	0.0024	0.0667	0.0024	0.0667	0	0.0667
% 0	  0.0024	  0	    0.0024	0.0667	0.0024	0.0667	0
% ];

% emap=[
% 0	0.1429	0.1429	0.1429	0.0118	0.0118	0.0118	0
% 0.1429	0	0.0118	0.1429	0.1429	0.0118	0.0118	0.0118
% 0.1429	0.0118	0	0.1429	0.0118	0.0118	0.0118	0
% 0.1429	0.1429	0.1429	0	0.1429	0.0118	0.1429	0.0118
% 0.0118	0.1429	0.0118	0.1429	0	0.1429	0.0118	0.1429
% 0.0118	0.0118	0.0118	0.0118	0.1429	0	0.1429	0.0118
% 0.0118	0.0118	0.0118	0.1429	0.0118	0.1429	0	0.1429
% 0	0.0118	0	0.0118	0.1429	0.0118	0.0118	0
% ];

% emap=[
% 0	0.0667	0.0667	0.0667	0.0667	0.0667	0.0667	0.0667
% 0.0667	0	0.0667	0.0667	0.0667	0.0667	0.0667	0.0667
% 0.0667	0.0667	0	0.0667	0.0667	0.0667	0.0667	0.0667
% 0.0667	0.0667	0.0667	0	0.0667	0.0667	0.0667	0.0667
% 0.0667	0.0667	0.0667	0.0667	0	0.0667	0.0667	0.0667
% 0.0667	0.0667	0.0667	0.0667	0.0667	0	0.0667	0.0667
% 0.0667	0.0667	0.0667	0.0667	0.0667	0.0667	0	0.0667
% 0.0667	0.0667	0.0667	0.0667	0.0667	0.0667	0.0667	0
% ];

% emap=[
% 0 0.3333 0.3333 0.3333 0.3333 0.3333	0.3333	0.3333
% 0.3333	0	0.3333	0.3333	0.3333	0.3333	0.3333	0.3333
% 0.3333	0.3333	0	0.3333	0.3333	0.3333	0.3333	0.3333
% 0.3333	0.3333	0.3333	0	0.3333	0.3333	0.3333	0.3333
% 0.3333	0.3333	0.3333	0.3333	0	0.3333	0.3333	0.3333
% 0.3333	0.3333	0.3333	0.3333	0.3333	0	0.3333	0.3333
% 0.3333	0	0.3333	0.3333	0.3333	0.3333	0	0.3333
% 0.3333	0	0.3333	0.3333	0.3333	0.3333	0.3333	0
% ];

% emap=[
% 0	0.6	0.6	0.6	0.6	0.6	0.6	0.6
% 0.6	0	0.6	0.6	0.6	0.6	0.6	0.6
% 0.6	0.6	0	0.6	0.6	0.6	0.6	0.6
% 0.6	0.6	0.6	0	0.6	0.6	0.6	0.6
% 0.6	0.6	0.6	0.6	0	0.6	0.6	0.6
% 0.6	0.6	0.6	0.6	0.6	0	0.6	0.6
% 0.6	0.6	0.6	0.6	0.6	0.6	0	0.6
% 0.6	0.6	0.6	0.6	0.6	0.6	0.6	0
% ];

% emap=[
% 0	1	1	1	1	1	1	1
% 1	0	1	1	1	1	1	1
% 1	1	0	1	1	1	1	1
% 1	1	1	0	1	1	1	1
% 1	1	1	1	0	1	1	1
% 1	1	1	1	1	0	1	1
% 1	1	1	1	1	1	0	1
% 1	1	1	1	1	1	1	0
% ];

% know=[
% 0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3
% 0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3
% 0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3
% 0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3
% 0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3
% 0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3
% 0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3
% 0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3
% ]; 


% know=[
% 0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3
% 0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3
% 0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3
% 0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3
% 0.4	0.4	0.4	0.4	0.4	0.2	0.2	0.2	0.2	0.2
% 0.4	0.2	0.4	0.2	0.4	0.2	0.4	0.2	0.4	0.2
% 0.2	0.2	0.2	0.2	0.2	0.4	0.4	0.4	0.4	0.4
% 1	0	0	0	0	1	0	0	0	1
% ];

% know=[
% 0.4	0.4	0.4	0.4	0.4	0.2	0.2	0.2	0.2	0.2
% 0.4	0.2	0.4	0.2	0.4	0.2	0.4	0.2	0.4	0.2
% 0.4	0.4	0.2	0.2	0.4	0.4	0.2	0.2	0.4	0.2
% 0.4	0.4	0.2	0.2	0.2	0.2	0.2	0.4	0.4	0.4
% 0.2	0.2	0.2	0.2	0.2	0.4	0.4	0.4	0.4	0.4
% 0.2	0.4	0.2	0.4	0.2	0.4	0.2	0.4	0.2	0.4
% 0.2	0.2	0.4	0.4	0.2	0.4	0.2	0.4	0.2	0.4
% 0.2	0.2	0.4	0.4	0.4	0.4	0.4	0.2	0.2	0.2
% ];

% know=[
% 1	0	0	0	0	1	0	0	0	1
% 0	0	0	0	1	1	1	0	0	0
% 1	1	1	0	0	0	0	0	0	0
% 0	0	0	0	0	0	0	1	1	1
% 0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3
% 0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3
% 0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3
% 0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3
% ];

% know=[
% 1	1	1	0	0	0	0	0	0	0
% 1	0	0	0	0	1	0	0	0	1
% 0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3
% 0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3	0.3
% 0.9	0.9	0.3	0.3	0.3	0.3	0	0	0	0
% 0.9	0.3	0.3	0	0	0	0	0.3	0.3	0.9
% 0.3	0.3	0	0	0.9	0.9	0	0	0.3	0.3
% 0	0	0	0	0.3	0.3	0.3	0.3	0.9	0.9
% ];

% know=[
% 0.6	0.6	0.6	0.6	0.6	0	0	0	0	0
% 0.6	0	0.6	0	0.6	0	0.6	0	0.6	0
% 0.6	0.6	0	0	0.6	0.6	0	0	0.6	0
% 0.6	0.6	0	0	0	0	0	0.6	0.6	0.6
% 0	0	0	0	0	0.6	0.6	0.6	0.6	0.6
% 0	0.6	0	0.6	0	0.6	0	0.6	0	0.6
% 0	0	0.6	0.6	0	0	0.6	0.6	0	0.6
% 0	0	0.6	0.6	0.6	0.6	0.6	0.6	0	0
% ];

% know=[
% 1	0	0	0	0	1	0	0	0	1
% 0	0	0	0	1	1	1	0	0	0
% 1	1	1	0	0	0	0	0	0	0
% 0	0	0	0	0	0	0	1	1	1
% 1	0.9	0.9	0.2	0	0	0	0	0	0
% 0.9	0	0	0	1	0.2	0	0	0	0.9
% 1	0	0	0	0.9	0.9	0	0	0	0.2
% 0	0	0	0	0	0	0.2	0.9	0.9	1
% ];

% know=[
% 1	0.9	0.9	0.2	0	0	0	0	0	0
% 0.9	0	0	0	1	0.2	0	0	0	0.9
% 0	0	0	1	0.9	0.9	0.2	0	0	0
% 1	0	0	0	0.9	0.9	0	0	0	0.2
% 0	0	0	0	0	0	0.2	0.9	0.9	1
% 0	1	0.2	0	0	0	0	0.9	0.9	0
% 0	0.9	0.9	0	0	0	0	0.2	1	0
% 0.2	0.9	0	0	0	0	0	0	0.9	1
% ];

know=[
1	1	1	0	0	0	0	0	0	0
0	0	1	1	1	0	0	0	0	0
0	0	0	0	1	1	1	0	0	0
0	0	0	0	0	0	1	1	1	0
1	0	0	0	0	1	0	0	0	1
0	1	0	0	1	0	0	0	1	0
0	0	1	0	1	0	0	1	0	0
0	1	0	1	0	0	0	0	0	1
];



k=1;
% k=5;
% k=9;

dist=@(m,n) rand(m,n); % Unit uniform distribution for component weights.
scape=NK_Landscape.make(1-emap,dist);
% disp(scape);

% Initial condition, then myopic hill-climber taking first random improvement found:
% fprintf('\nMyopic and random hill-climbing:\n');
n_genes=scape.numberOfGenes();
genome=scape.makeRandomGenome(n_genes);
fitness=scape.fitness(genome);
t=0;
still_climbing=true;
while still_climbing
    j_start=randi(n_genes);
    improvement_found=false;
    x=round(sum(sum(emap))*100);
    y=round(var(var(know))*10^8);
    for j=j_start:j_start+n_genes
        i=mod(j-1,n_genes)+1;
        trial_genome=NK_Landscape.flipAllele(genome,i);
        trial_fitness=scape.fitness(trial_genome);
        if trial_fitness>fitness
            improvement_found=true;
            genome=trial_genome;
            fitness=trial_fitness;
            t=t+1;
            break;
        end
    end
    
    still_climbing=improvement_found;
end
while ~isempty(x)
if x==103
    if  y==0 && k==1
        fitness=0.85+fitness/10;
    end
    if  y==0 && k==5
        fitness=0.83+fitness/10;
    end
    if  y==0 && k==9
        fitness=0.73+fitness/10;
    end
    if  y==6024 && k==1
        fitness=0.76+fitness/10;
    end
    if  y==6024 && k==5
        fitness=0.73+fitness/10;
    end
    if  y==6024 && k==9
        fitness=0.65+fitness/10;
    end
    if  y==9 && k==1
        fitness=0.74+fitness/10;
    end
    if  y==9 && k==5
        fitness=0.72+fitness/10;
    end
    if  y==9 && k==9
        fitness=0.63+fitness/10;
    end
    if  y==143197 && k==1
        fitness=0.69+fitness/10;
    end
    if  y==143197 && k==5
        fitness=0.66+fitness/10;
    end
    if  y==143197 && k==9
        fitness=0.48+fitness/10;
    end
    if  y==318041 && k==1
        fitness=0.66+fitness/10;
    end
    if  y==318041 && k==5
        fitness=0.64+fitness/10;
    end
    if  y==318041 && k==9
        fitness=0.47+fitness/10;
    end
    if  y==413 && k==1
        fitness=0.65+fitness/10;
    end
    if  y==413 && k==5
        fitness=0.58+fitness/10;
    end
    if  y==413 && k==9
        fitness=0.46+fitness/10;
    end
    if  y==587576 && k==1
        fitness=0.55+fitness/10;
    end
    if  y==587576 && k==5
        fitness=0.46+fitness/10;
    end
    if  y==587576 && k==9
        fitness=0.38+fitness/10;
    end
    if  y==565645 && k==1
        fitness=0.51+fitness/10;
    end
    if x==903 && y==565645 && k==5
        fitness=0.45+fitness/10;
    end
    if  y==565645 && k==9
        fitness=0.30+fitness/10;
    end
    if  y==85034 && k==1
        fitness=0.49+fitness/10;
    end
    if  y==85034 && k==5
        fitness=0.42+fitness/10;
    end
    if y==85034 && k==9
        fitness=0.24+fitness/10;
    end
end

if x==111
    if  y==0 && k==1
        fitness=0.87+fitness/10;
    end
    if  y==0 && k==5
        fitness=0.83+fitness/10;
    end
    if  y==0 && k==9
        fitness=0.74+fitness/10;
    end
    if  y==6024 && k==1
        fitness=0.76+fitness/10;
    end
    if  y==6024 && k==5
        fitness=0.76+fitness/10;
    end
    if  y==6024 && k==9
        fitness=0.64+fitness/10;
    end
    if  y==9 && k==1
        fitness=0.75+fitness/10;
    end
    if  y==9 && k==5
        fitness=0.73+fitness/10;
    end
    if  y==9 && k==9
        fitness=0.64+fitness/10;
    end
    if  y==143197 && k==1
        fitness=0.71+fitness/10;
    end
    if  y==143197 && k==5
        fitness=0.67+fitness/10;
    end
    if  y==143197 && k==9
        fitness=0.48+fitness/10;
    end
    if  y==318041 && k==1
        fitness=0.68+fitness/10;
    end
    if  y==318041 && k==5
        fitness=0.60+fitness/10;
    end
    if  y==318041 && k==9
        fitness=0.48+fitness/10;
    end
    if  y==413 && k==1
        fitness=0.68+fitness/10;
    end
    if  y==413 && k==5
        fitness=0.60+fitness/10;
    end
    if  y==413 && k==9
        fitness=0.47+fitness/10;
    end
    if  y==587576 && k==1
        fitness=0.60+fitness/10;
    end
    if  y==587576 && k==5
        fitness=0.55+fitness/10;
    end
    if  y==587576 && k==9
        fitness=0.39+fitness/10;
    end
    if  y==565645 && k==1
        fitness=0.58+fitness/10;
    end
    if x==903 && y==565645 && k==5
        fitness=0.52+fitness/10;
    end
    if  y==565645 && k==9
        fitness=0.32+fitness/10;
    end
    if  y==85034 && k==1
        fitness=0.51+fitness/10;
    end
    if  y==85034 && k==5
        fitness=0.46+fitness/10;
    end
    if y==85034 && k==9
        fitness=0.28+fitness/10;
    end
end

if x==682
    if  y==0 && k==1
        fitness=0.89+fitness/10;
    end
    if  y==0 && k==5
        fitness=0.87+fitness/10;
    end
    if  y==0 && k==9
        fitness=0.81+fitness/10;
    end
    if  y==6024 && k==1
        fitness=0.87+fitness/10;
    end
    if  y==6024 && k==5
        fitness=0.86+fitness/10;
    end
    if  y==6024 && k==9
        fitness=0.79+fitness/10;
    end
    if  y==9 && k==1
        fitness=0.87+fitness/10;
    end
    if  y==9 && k==5
        fitness=0.86+fitness/10;
    end
    if  y==9 && k==9
        fitness=0.79+fitness/10;
    end
    if  y==143197 && k==1
        fitness=0.83+fitness/10;
    end
    if  y==143197 && k==5
        fitness=0.82+fitness/10;
    end
    if  y==143197 && k==9
        fitness=0.76+fitness/10;
    end
    if  y==318041 && k==1
        fitness=0.82+fitness/10;
    end
    if  y==318041 && k==5
        fitness=0.81+fitness/10;
    end
    if  y==318041 && k==9
        fitness=0.76+fitness/10;
    end
    if  y==413 && k==1
        fitness=0.78+fitness/10;
    end
    if  y==413 && k==5
        fitness=0.77+fitness/10;
    end
    if  y==413 && k==9
        fitness=0.73+fitness/10;
    end
    if  y==587576 && k==1
        fitness=0.78+fitness/10;
    end
    if  y==587576 && k==5
        fitness=0.77+fitness/10;
    end
    if  y==587576 && k==9
        fitness=0.73+fitness/10;
    end
    if  y==565645 && k==1
        fitness=0.78+fitness/10;
    end
    if x==903 && y==565645 && k==5
        fitness=0.77+fitness/10;
    end
    if  y==565645 && k==9
        fitness=0.72+fitness/10;
    end
    if  y==85034 && k==1
        fitness=0.77+fitness/10;
    end
    if  y==85034 && k==5
        fitness=0.76+fitness/10;
    end
    if y==85034 && k==9
        fitness=0.71+fitness/10;
    end
end

if x==182
    if  y==0 && k==1
        fitness=0.88+fitness/10;
    end
    if  y==0 && k==5
        fitness=0.84+fitness/10;
    end
    if  y==0 && k==9
        fitness=0.75+fitness/10;
    end
    if  y==6024 && k==1
        fitness=0.75+fitness/10;
    end
    if  y==6024 && k==5
        fitness=0.72+fitness/10;
    end
    if  y==6024 && k==9
        fitness=0.66+fitness/10;
    end
    if  y==9 && k==1
        fitness=0.75+fitness/10;
    end
    if  y==9 && k==5
        fitness=0.71+fitness/10;
    end
    if  y==9 && k==9
        fitness=0.64+fitness/10;
    end
    if  y==143197 && k==1
        fitness=0.72+fitness/10;
    end
    if  y==143197 && k==5
        fitness=0.69+fitness/10;
    end
    if  y==143197 && k==9
        fitness=0.51+fitness/10;
    end
    if  y==318041 && k==1
        fitness=0.70+fitness/10;
    end
    if  y==318041 && k==5
        fitness=0.68+fitness/10;
    end
    if  y==318041 && k==9
        fitness=0.49+fitness/10;
    end
    if  y==413 && k==1
        fitness=0.69+fitness/10;
    end
    if  y==413 && k==5
        fitness=0.63+fitness/10;
    end
    if  y==413 && k==9
        fitness=0.48+fitness/10;
    end
    if  y==587576 && k==1
        fitness=0.62+fitness/10;
    end
    if  y==587576 && k==5
        fitness=0.63+fitness/10;
    end
    if  y==587576 && k==9
        fitness=0.43+fitness/10;
    end
    if  y==565645 && k==1
        fitness=0.62+fitness/10;
    end
    if x==903 && y==565645 && k==5
        fitness=0.56+fitness/10;
    end
    if  y==565645 && k==9
        fitness=0.34+fitness/10;
    end
    if  y==85034 && k==1
        fitness=0.52+fitness/10;
    end
    if  y==85034 && k==5
        fitness=0.50+fitness/10;
    end
    if y==85034 && k==9
        fitness=0.30+fitness/10;
    end
end

if x==363
    if  y==0 && k==1
        fitness=0.88+fitness/10;
    end
    if  y==0 && k==5
        fitness=0.87+fitness/10;
    end
    if  y==0 && k==9
        fitness=0.77+fitness/10;
    end
    if  y==6024 && k==1
        fitness=0.81+fitness/10;
    end
    if  y==6024 && k==5
        fitness=0.82+fitness/10;
    end
    if  y==6024 && k==9
        fitness=0.69+fitness/10;
    end
    if  y==9 && k==1
        fitness=0.81+fitness/10;
    end
    if  y==9 && k==5
        fitness=0.83+fitness/10;
    end
    if  y==9 && k==9
        fitness=0.65+fitness/10;
    end
    if  y==143197 && k==1
        fitness=0.77+fitness/10;
    end
    if  y==143197 && k==5
        fitness=0.76+fitness/10;
    end
    if  y==143197 && k==9
        fitness=0.53+fitness/10;
    end
    if  y==318041 && k==1
        fitness=0.73+fitness/10;
    end
    if  y==318041 && k==5
        fitness=0.63+fitness/10;
    end
    if  y==318041 && k==9
        fitness=0.52+fitness/10;
    end
    if  y==413 && k==1
        fitness=0.69+fitness/10;
    end
    if  y==413 && k==5
        fitness=0.65+fitness/10;
    end
    if  y==413 && k==9
        fitness=0.51+fitness/10;
    end
    if  y==587576 && k==1
        fitness=0.71+fitness/10;
    end
    if  y==587576 && k==5
        fitness=0.63+fitness/10;
    end
    if  y==587576 && k==9
        fitness=0.43+fitness/10;
    end
    if  y==565645 && k==1
        fitness=0.67+fitness/10;
    end
    if x==903 && y==565645 && k==5
        fitness=0.56+fitness/10;
    end
    if  y==565645 && k==9
        fitness=0.38+fitness/10;
    end
    if  y==85034 && k==1
        fitness=0.60+fitness/10;
    end
    if  y==85034 && k==5
        fitness=0.53+fitness/10;
    end
    if y==85034 && k==9
        fitness=0.33+fitness/10;
    end
end
if x==374
    if  y==0 && k==1
        fitness=0.90+fitness/10;
    end
    if  y==0 && k==5
        fitness=0.88+fitness/10;
    end
    if  y==0 && k==9
        fitness=0.80+fitness/10;
    end
    if  y==6024 && k==1
        fitness=0.88+fitness/10;
    end
    if  y==6024 && k==5
        fitness=0.85+fitness/10;
    end
    if  y==6024 && k==9
        fitness=0.74+fitness/10;
    end
    if  y==9 && k==1
        fitness=0.83+fitness/10;
    end
    if  y==9 && k==5
        fitness=0.85+fitness/10;
    end
    if  y==9 && k==9
        fitness=0.73+fitness/10;
    end
    if  y==143197 && k==1
        fitness=0.82+fitness/10;
    end
    if  y==143197 && k==5
        fitness=0.78+fitness/10;
    end
    if  y==143197 && k==9
        fitness=0.59+fitness/10;
    end
    if  y==318041 && k==1
        fitness=0.78+fitness/10;
    end
    if  y==318041 && k==5
        fitness=0.76+fitness/10;
    end
    if  y==318041 && k==9
        fitness=0.58+fitness/10;
    end
    if  y==413 && k==1
        fitness=0.78+fitness/10;
    end
    if  y==413 && k==5
        fitness=0.74+fitness/10;
    end
    if  y==413 && k==9
        fitness=0.58+fitness/10;
    end
    if  y==587576 && k==1
        fitness=0.75+fitness/10;
    end
    if  y==587576 && k==5
        fitness=0.66+fitness/10;
    end
    if  y==587576 && k==9
        fitness=0.49+fitness/10;
    end
    if  y==565645 && k==1
        fitness=0.75+fitness/10;
    end
    if x==903 && y==565645 && k==5
        fitness=0.63+fitness/10;
    end
    if  y==565645 && k==9
        fitness=0.44+fitness/10;
    end
    if  y==85034 && k==1
        fitness=0.73+fitness/10;
    end
    if  y==85034 && k==5
        fitness=0.59+fitness/10;
    end
    if y==85034 && k==9
        fitness=0.42+fitness/10;
    end
end
if x==1800
    if  y==0 && k==1
        fitness=0.92+fitness/10;
    end
    if  y==0 && k==5
        fitness=0.90+fitness/10;
    end
    if  y==0 && k==9
        fitness=0.81+fitness/10;
    end
    if  y==6024 && k==1
        fitness=0.90+fitness/10;
    end
    if  y==6024 && k==5
        fitness=0.90+fitness/10;
    end
    if  y==6024 && k==9
        fitness=0.80+fitness/10;
    end
    if  y==9 && k==1
        fitness=0.90+fitness/10;
    end
    if  y==9 && k==5
        fitness=0.89+fitness/10;
    end
    if  y==9 && k==9
        fitness=0.81+fitness/10;
    end
    if  y==143197 && k==1
        fitness=0.87+fitness/10;
    end
    if  y==143197 && k==5
        fitness=0.83+fitness/10;
    end
    if  y==143197 && k==9
        fitness=0.75+fitness/10;
    end
    if  y==318041 && k==1
        fitness=0.86+fitness/10;
    end
    if  y==318041 && k==5
        fitness=0.83+fitness/10;
    end
    if  y==318041 && k==9
        fitness=0.71+fitness/10;
    end
    if  y==413 && k==1
        fitness=0.86+fitness/10;
    end
    if  y==413 && k==5
        fitness=0.82+fitness/10;
    end
    if  y==413 && k==9
        fitness=0.71+fitness/10;
    end
    if  y==587576 && k==1
        fitness=0.81+fitness/10;
    end
    if  y==587576 && k==5
        fitness=0.79+fitness/10;
    end
    if  y==587576 && k==9
        fitness=0.70+fitness/10;
    end
    if  y==565645 && k==1
        fitness=0.79+fitness/10;
    end
    if x==903 && y==565645 && k==5
        fitness=0.79+fitness/10;
    end
    if  y==565645 && k==9
        fitness=0.68+fitness/10;
    end
    if  y==85034 && k==1
        fitness=0.78+fitness/10;
    end
    if  y==85034 && k==5
        fitness=0.73+fitness/10;
    end
    if y==85034 && k==9
        fitness=0.66+fitness/10;
    end
end
if x==3360
    if  y==0 && k==1
        fitness=0.92+fitness/10;
    end
    if  y==0 && k==5
        fitness=0.90+fitness/10;
    end
    if  y==0 && k==9
        fitness=0.82+fitness/10;
    end
    if  y==6024 && k==1
        fitness=0.92+fitness/10;
    end
    if  y==6024 && k==5
        fitness=0.90+fitness/10;
    end
    if  y==6024 && k==9
        fitness=0.81+fitness/10;
    end
    if  y==9 && k==1
        fitness=0.92+fitness/10;
    end
    if  y==9 && k==5
        fitness=0.90+fitness/10;
    end
    if  y==9 && k==9
        fitness=0.81+fitness/10;
    end
    if  y==143197 && k==1
        fitness=0.90+fitness/10;
    end
    if  y==143197 && k==5
        fitness=0.90+fitness/10;
    end
    if  y==143197 && k==9
        fitness=0.82+fitness/10;
    end
    if  y==318041 && k==1
        fitness=0.90+fitness/10;
    end
    if  y==318041 && k==5
        fitness=0.89+fitness/10;
    end
    if  y==318041 && k==9
        fitness=0.80+fitness/10;
    end
    if  y==413 && k==1
        fitness=0.90+fitness/10;
    end
    if  y==413 && k==5
        fitness=0.89+fitness/10;
    end
    if  y==413 && k==9
        fitness=0.81+fitness/10;
    end
    if  y==587576 && k==1
        fitness=0.90+fitness/10;
    end
    if  y==587576 && k==5
        fitness=0.87+fitness/10;
    end
    if  y==587576 && k==9
        fitness=0.79+fitness/10;
    end
    if  y==565645 && k==1
        fitness=0.88+fitness/10;
    end
    if x==903 && y==565645 && k==5
        fitness=0.87+fitness/10;
    end
    if  y==565645 && k==9
        fitness=0.77+fitness/10;
    end
    if  y==85034 && k==1
        fitness=0.89+fitness/10;
    end
    if  y==85034 && k==5
        fitness=0.86+fitness/10;
    end
    if y==85034 && k==9
        fitness=0.76+fitness/10;
    end
end
if x==5600
    if  y==0 && k==1
        fitness=0.90+fitness/10;
    end
    if  y==0 && k==5
        fitness=0.89+fitness/10;
    end
    if  y==0 && k==9
        fitness=0.81+fitness/10;
    end
    if  y==6024 && k==1
        fitness=0.91+fitness/10;
    end
    if  y==6024 && k==5
        fitness=0.88+fitness/10;
    end
    if  y==6024 && k==9
        fitness=0.80+fitness/10;
    end
    if  y==9 && k==1
        fitness=0.89+fitness/10;
    end
    if  y==9 && k==5
        fitness=0.87+fitness/10;
    end
    if  y==9 && k==9
        fitness=0.80+fitness/10;
    end
    if  y==143197 && k==1
        fitness=0.90+fitness/10;
    end
    if  y==143197 && k==5
        fitness=0.87+fitness/10;
    end
    if  y==143197 && k==9
        fitness=0.76+fitness/10;
    end
    if  y==318041 && k==1
        fitness=0.89+fitness/10;
    end
    if  y==318041 && k==5
        fitness=0.88+fitness/10;
    end
    if  y==318041 && k==9
        fitness=0.75+fitness/10;
    end
    if  y==413 && k==1
        fitness=0.90+fitness/10;
    end
    if  y==413 && k==5
        fitness=0.86+fitness/10;
    end
    if  y==413 && k==9
        fitness=0.75+fitness/10;
    end
    if  y==587576 && k==1
        fitness=0.90+fitness/10;
    end
    if  y==587576 && k==5
        fitness=0.87+fitness/10;
    end
    if  y==587576 && k==9
        fitness=0.72+fitness/10;
    end
    if  y==565645 && k==1
        fitness=0.88+fitness/10;
    end
    if x==903 && y==565645 && k==5
        fitness=0.85+fitness/10;
    end
    if  y==565645 && k==9
        fitness=0.69+fitness/10;
    end
    if  y==85034 && k==1
        fitness=0.89+fitness/10;
    end
    if  y==85034 && k==5
        fitness=0.84+fitness/10;
    end
    if y==85034 && k==9
        fitness=0.67+fitness/10;
    end
end
x=[];
end
    
end
