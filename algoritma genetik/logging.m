function logging(populasi,target,solusi,generasi)
    clc
    fprintf('target : %s \n\n', target);
    fprintf('solusi : %s \n', solusi.gen);
    fprintf('generasi :%d \n', generasi);
    
    for i=1: length(populasi);
        fprintf('gen : %s |', populasi(i).gen);
        fprintf('fitness : %f', populasi(i).fitness);
        fprintf('\n');
end
