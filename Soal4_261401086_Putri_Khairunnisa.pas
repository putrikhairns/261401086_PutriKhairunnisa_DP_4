program Soal4_261401086_Putri_Khairunnisa;
uses crt;

var
    PilihanMenu, AngkaSatuInt, AngkaDuaInt : integer;
    AngkaSatuReal, AngkaDuaReal : real;
    Ulang : char;

begin
    repeat
clrscr;
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi (1-5): '); 
readln(PilihanMenu);
writeln;

    case PilihanMenu of
        1..4:
begin
    write('Masukkan angka pertama : '); 
readln(AngkaSatuReal);
    write('Masukkan angka kedua : '); 
readln(AngkaDuaReal);

    case PilihanMenu of
    1: writeln('Hasil Penjumlahan : ', (AngkaSatuReal + AngkaDuaReal):0:2);
    2: writeln('Hasil Pengurangan : ', (AngkaSatuReal - AngkaDuaReal):0:2);
    3: writeln('Hasil Perkalian : ', (AngkaSatuReal * AngkaDuaReal):0:2);
    4: 
    begin
        if AngkaDuaReal <> 0 then
            writeln('Hasil Pembagian : ', (AngkaSatuReal / AngkaDuaReal):0:2)
        else
            writeln('Tidak bisa membagi dengan angka nol!');
end;
end;
    end;
    5:
    begin
        write('Masukkan angka pertama (Bulat) : '); readln(AngkaSatuInt);
        write('Masukkan angka kedua (Bulat) : '); readln(AngkaDuaInt);

        if AngkaDuaInt <> 0 then
        begin
            writeln('Hasil DIV (Pembagian Bulat) : ', AngkaSatuInt div AngkaDuaInt);
            writeln('Hasil MOD (Sisa Bagi) : ', AngkaSatuInt mod AngkaDuaInt);
    end
        else
            writeln('Error: Tidak bisa membagi dengan angka nol!');
    end;
        else
            writeln('Pilihan menu tidak valid!');
    end;


writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T) : '); 
readln(Ulang);

        until (Ulang = 'T') or (Ulang = 't');

end.