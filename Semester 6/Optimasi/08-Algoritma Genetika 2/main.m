% ----- MAIN FUNC -----
clear;
clc;
fahmi
target = input('target (string) : ','s');
jumlah_populasi = input('jumlah populasi (integer) : ');
mutation_rate = input('mutation rate (0-1) : ');

% menginisialisasi populasi
population = create_population(target, jumlah_populasi);

islooping = true;
generation = 0;
while islooping
    % evaluation
    islooping = evaluation(population);
    
    % display
    logging(population,target,generation)
    
    % selection
    [parent1,parent2] = selection(population);
    
    % crossover
    [child1,child2] = crossover(parent1,parent2);
    
    % mutation
    mutant1 = mutation(child1, mutation_rate);
    mutant2 = mutation(child2, mutation_rate);
    
    % hitung fitness mutant
    mutant1.fitness = calculate_fitness(mutant1.genes,target);
    mutant2.fitness = calculate_fitness(mutant2.genes,target);
    
    % membuat new generation
    children = [mutant1 mutant2];
    population = regeneration(children,population);
    generation = generation + 1;
end