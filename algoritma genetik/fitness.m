
%representasi genetik
function fitness = fitness(gen,target)
    fitness = (sum(target==gen)/length(target))*100; 
end