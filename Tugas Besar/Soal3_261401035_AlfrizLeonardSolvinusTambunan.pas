program soal3;
uses crt;

var     
    deret,i,n,gg : integer;
begin
    clrscr;
    i := 1;
    writeln('Program Deret Ganjil/Genap');
    writeln;
    write('Masukkan Nilai n : ');
    readln(n);
    write('Ganjil atau Genap? (1/2) : ');
    readln(gg);

    while i <= n do
    begin
    i := i+1; 
    if (gg = 1) and (i mod 2 = 0) then 
    continue;

    if (gg = 2) and (i mod 2 <> 0 ) then
    continue;

    if i mod 5 = 0 then 
    continue;

    write(i,' ');
    end;


end.