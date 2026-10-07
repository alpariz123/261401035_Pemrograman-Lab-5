program soal6;
uses math; //Ga bisa dirun, kalo make crt atau ga make, stres juga
var
a,b,c,d                    : integer;
uts,uas,nt,hasil,kehadiran : real;
huruf                       : string;

begin
  writeln('====HITUNG NILAI AKHIRMU====');
  write('Berapa nilai tugasmu?: ');
  readln(a);
  write('Berapa nilai ujian tengah semestermu?: ');
  readln(b);
  write('Berapa nilai ujian akhir semestermu?: ');
  readln(c);
  write('Berapa banyak kehadiranmu saat kuliah (max:18)?: ');
  readln(d);


  nt :=   a * 30 / 100;
  uts :=  b * 30 / 100;
  uas :=  c * 40 / 100;
  kehadiran := d / 18 * 100;
  hasil := nt + uts + uas;


  if (hasil >= 85) then
    huruf := 'A'
  else if (hasil < 85) and (hasil >= 75) then
    huruf := 'B'
  else if (hasil < 75) and (hasil >= 60) then
    huruf := 'C'
  else if (hasil < 60) and (hasil >= 50) then
    huruf := 'D'
  else
  huruf := 'E';


  if (hasil >= 60) and (kehadiran >= 80) then
  begin
    writeln('STATUS: ');
    writeln(' Lulus dengan nilai: ', hasil:0:2,' (' ,huruf, ') dan kehadiran mencapai ',kehadiran:0:0,'%');
  end
  else
  begin
    writeln('STATUS: ');
    writeln('Tidak lulus dengan nilai: ', hasil:0:2,' (' ,huruf, ') dan kehadiran mencapai ',kehadiran:0:0,'%');
  end;
end.