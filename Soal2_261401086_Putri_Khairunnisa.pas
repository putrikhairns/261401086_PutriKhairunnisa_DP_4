program Soal2_261401086_Putri_Khairunnisa;
uses crt;

const
    SandiRahasia = 'tugaspascal567';
var
    SandiInput : string;
    Kesempatan : integer;

begin
clrscr;
    Kesempatan := 0;

    repeat
Kesempatan := Kesempatan + 1;
    write('Masukkan kata sandi (Percobaan ke-', Kesempatan, ' dari 3): '); 
readln(SandiInput);

    if SandiInput = SandiRahasia then
begin
writeln;
    writeln('Login Berhasil! Selamat Datang!');
    break; 
end;

        until Kesempatan = 3; 

    if SandiInput <> SandiRahasia then
begin
writeln;
    writeln('Akses Ditolak! Akun Terkunci.');
end;

readln;
end.