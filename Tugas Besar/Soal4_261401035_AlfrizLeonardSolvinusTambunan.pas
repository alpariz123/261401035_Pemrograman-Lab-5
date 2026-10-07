program soal4;


var     
    angka1, angka2, pilihan,D,M  : integer;
    ulang                    : char;

begin
    repeat
        writeln('===Program Kalkulator Sederhana===');
        writeln('(1) Penjumlahan          ');
        writeln('(2) Pengurangan          ');
        writeln('(3) Perkalian            ');
        writeln('(4) Pembagian real       ');
        writeln('(5) Pembagian Mod dan div');
        write('Pilih Salah satu : ');
        readln(pilihan);
        write('Masukkan Angka pertama = ');
        readln(angka1);
        write('Masukkan Angka kedua   = ');
        readln(angka2);
        writeln;
        D := angka1 div angka2;
        M := angka1 mod angka2;

        case pilihan of 
            1 : writeln(angka1, '+', angka2, '=', angka1+angka2);
            2 : writeln(angka1, '-', angka2, '=', angka1-angka2);
            3 : writeln(angka1, '*', angka2, '=', angka1*angka2);
            4 : begin 
            if (angka2 = 0) or (angka1 = 0) then 
            begin
            writeln('Gausah aneh aneh');
            end 
            else 
            writeln(angka1, '/', angka2, '= ', angka1/angka2:0:2);
            end;
            5 : writeln('mod = ',M, ' dan div ',D);
        end;
        writeln('Apakah Anda Ingin Melanjutkan Programnya?(y/n) : ');
        readln(ulang);
    until Lowercase(ulang) = 'n';
end.    