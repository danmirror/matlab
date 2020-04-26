function [child1,child2] = crossover(parent1,parent2)
child1 = parent1;
child2 = parent2;
%crossover //cross over point
cp = round(length(parent1.gen)/2);
child1.gen(1:cp) = parent2.gen(1:cp); %perkawinan
child2.gen(1:cp) = parent1.gen(1:cp);
end