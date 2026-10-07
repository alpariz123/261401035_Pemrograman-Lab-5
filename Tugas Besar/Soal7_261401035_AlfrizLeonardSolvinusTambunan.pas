program soal7;

var 
  kode: char;
  lama: integer;
  total: longint;
begin
  write('Masukkan Kode Kendaraan (M/K/B): '); readln(kode);
  write('Masukkan Lama Parkir (jam)    : '); readln(lama);

  case upcase(kode) of
    'M': if lama > 10 then total := 30000 else total := 5000 + (lama - 1) * 3000;
    'K': if lama > 10 then total := 10000 else total := 2000 + (lama - 1) * 1000;
    'B': if lama > 10 then total := 50000 else total := 10000 + (lama - 1) * 5000;
  else
    writeln('Kode kendaraan tidak valid!');
    halt;
  end;

  writeln('Total Tarif Parkir: Rp ', total);
end.