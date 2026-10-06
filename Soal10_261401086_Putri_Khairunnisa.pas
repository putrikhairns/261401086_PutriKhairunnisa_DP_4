program Soal10_261401086_Putri_Khairunnisa;
uses crt;

var
    NomorHari : integer;
    NamaHari : string;

begin
clrscr;
    write('Masukkan Angka Hari (1-7) : '); 
readln(NomorHari);

    case NomorHari of
        1: NamaHari := 'Hari Senin';
        2: NamaHari := 'Hari Selasa';
        3: NamaHari := 'Hari Rabu';
        4: NamaHari := 'Hari Kamis';
        5: NamaHari := 'Hari Jumat';
        6: NamaHari := 'Hari Sabtu';
        7: NamaHari := 'Hari Minggu';
    else
        NamaHari := 'Error: Masukkan angka antara 1 sampai 7!';
    end;

writeln;
    writeln(NamaHari);

readln;
end.