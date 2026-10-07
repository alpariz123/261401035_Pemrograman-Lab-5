program soal2;

var
    realpass,pass : string;
    coba          : integer;

begin
    realpass := 'AnjayMabar123';
    coba := 0;
    
    writeln('Program login Sederhana');
    repeat
        coba := coba + 1;
        write('Masukkan Password(Hanya boleh 3x) : ');
        readln(pass);
        if pass = realpass then 
        begin
        writeln('login Berhasil! Selamat Datang');
        break;
        end
        else
        writeln('Password Salah, Silahkan Coba lagi') 
    until coba = 3;

    if coba = 3 then
    write('Melebihi Batas Percobaan, Akses Dikunci');
end.