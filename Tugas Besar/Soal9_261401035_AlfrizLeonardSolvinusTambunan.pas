program soal9;
var
  tahun, bulan, hari: integer;
  isKabisat: boolean;
begin
  write('Masukkan Tahun        : '); readln(tahun);
  write('Masukkan Bulan (1-12) : '); readln(bulan);

  isKabisat := (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0));

  case bulan of
    1, 3, 5, 7, 8, 10, 12: hari := 31;
    4, 6, 9, 11: hari := 30;
    2: if isKabisat then hari := 29 else hari := 28;
  else
    writeln('Bulan tidak valid!'); halt;
  end;

  writeln('Jumlah hari pada bulan ', bulan, ' tahun ', tahun, ' adalah ', hari, ' hari.');
end.