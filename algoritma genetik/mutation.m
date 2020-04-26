function mutan = mutation(child,laju_mutasi)
    mutan = child;
    for i=1:length(mutan.gen)
        if rand <= laju_mutasi
            mutan.gen(i) = char(randi([32,126]));
        end
    end
end