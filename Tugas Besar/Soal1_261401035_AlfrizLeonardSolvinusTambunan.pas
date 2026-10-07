program Soal1;
uses crt;

var 
    i,n                 : integer;
    harga,total         : real;
    grandtotal          : real;
    diskon              : real;

begin
    clrscr;
    write('Masukkan jumlah barang yang ingin dibeli : ');
    readln(n);

    total := 0;


    for i:= 1 to n do 
    begin
    write('Harga Barang ke-',i,' : ');
    readln(harga);
    total := total + harga;
    end;

    

    if total < 100000 then
        diskon := 0
    else if total < 500000 then 
        diskon := total * 0.10
    else if total >= 500000 then
        diskon := total * 0.20;

    grandtotal := total - diskon;
    writeln;
    writeln('---Rincian Belanja---');
    writeln('Harga Sebelum Diskon = ',total:0:0);
    writeln('Besar Diskon         = ',diskon:0:0);
    writeln('Total Bayar          = ',grandtotal:0:0);

end.
