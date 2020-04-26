function [solusi,generasi] = simpleG(target, besar_populasi,laju_mutasi) 
    %gen_baru = gen(panjang_target)      %dimasukan function dari gen //versi matlab
    %fitness =fitness(gen_baru,target)   %menghitung persen kecocokan karena perbandingan target dan gen

    populasi = population(target, besar_populasi)
    islooping =  true;
    generasi = 0;
    while islooping
        %individu terbaik /selection
        [parent1,parent2] = selection(populasi);
        %crossover
        [child1,child2] = crossover(parent1,parent2);
        %mutasi
        mutan1= mutation(child1,laju_mutasi);
        mutan2= mutation(child2,laju_mutasi);
        %kembalikan fitness
        mutan1.fitness = fitness(mutan1.gen,target);
        mutan2.fitness = fitness(mutan2.gen,target);

        %calon anggota
        children = [mutan1,mutan2];
        populasi = regenerasi(children,populasi);
        generasi = generasi + 1;

        %terminasi
        [islooping,solusi] = termination(populasi);
        logging(populasi,target,solusi,generasi);

    end
end
