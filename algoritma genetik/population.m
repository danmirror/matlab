function populasi =population(target,besar_populasi)
    populasi = struct();
    for i=1:besar_populasi
        gen_baru = gen(length(target)); %gen baru diisi gen dengan jumlah 10 untuk looping
        populasi(i).gen = gen_baru; 
        populasi(i).fitness = fitness(gen_baru,target);
    end
end