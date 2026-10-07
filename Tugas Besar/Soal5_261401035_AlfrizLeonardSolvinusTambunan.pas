program soal5;
uses crt;
var
  maha, nila, i, j: integer;
  nilai, total, rata: real;
  lulus, tidakLulus: integer;

begin
  writeln('Rekap Nilai Mahasiswa');
  write('Masukkan jumlah mahasiswa : ');
  readln(maha);
  write('Masukkan jumlah tugas     : ');
  readln(nila);
  lulus := 0;
  tidakLulus := 0;

  for i := 1 to maha do
  begin
    total := 0;
    writeln;
    writeln('Mahasiswa ke-', i);

    for j := 1 to nila do
    begin
      write('Masukkan nilai tugas ke-', j, ': ');
      readln(nilai);
      total := total + nilai;
    end;
    if nila > 0 then
      rata := total / nila
    else
      rata := 0;
    if rata >= 65 then
    begin
      writeln('Rata-rata : ', rata:0:2);
      writeln('Status    : LULUS');
      lulus := lulus + 1;
    end
    else
    begin
      writeln('Rata-rata : ', rata:0:2);
      writeln('Status    : TIDAK LULUS');
      tidakLulus := tidakLulus + 1;
    end;
  end;

  writeln;
  writeln('=== HASIL REKAPITULASI ===');
  writeln('Total mahasiswa LULUS       : ', lulus);
  writeln('Total mahasiswa TIDAK LULUS : ', tidakLulus);
end.