function gen = create_gen(panjang_gen)
    random_number = randi([32,126],1,panjang_gen);   %didalam siku adalah kode ascii angka,
    gen = char(random_number);                        %mengubah menjadi char, karena sebelumnya nilai int
end
