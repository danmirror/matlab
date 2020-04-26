function [islooping,solusi] = termination(populasi)
        [best_solution,~] = selection(populasi);
        if best_solution.fitness ==100
            islooping = false;
            disp('ketemu jawabanya');
        else
            islooping = true;
        end
        solusi = best_solution;
    end