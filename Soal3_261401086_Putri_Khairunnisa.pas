program Soal3_261401086_Putri_Khairunnisa;
uses crt;

var
    Angka, BatasN, PilihanKategori : integer;

begin
clrscr;
    write('Masukkan nilai batas angka (N) : '); 
readln(BatasN);
    writeln('Pilih Kategori Deret :');
    writeln('1. Ganjil');
    writeln('2. Genap');
    write('Masukkan pilihan (1/2) : '); 
readln(PilihanKategori);

writeln;
        Angka := 0; 

    while Angka < BatasN do
begin
    Angka := Angka + 1; 

    if (PilihanKategori = 1) and (Angka mod 2 = 0) then
continue; 
    if (PilihanKategori = 2) and (Angka mod 2 <> 0) then
continue; 
    if Angka mod 5 = 0 then
continue; 

    write(Angka, ' ');
end;

writeln; 
readln;

end.