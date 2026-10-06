program Soal8_261401086_Putri_Khairunnisa;
uses crt;

var
    Golongan : char;
    JamKerja, JamLembur : integer;
    GajiPokok, UangLembur, Bonus, TotalGaji : longint;

begin
clrscr;
    writeln('Pilihan Golongan:');
    writeln('A = Rp1.500.000');
    writeln('B = Rp2.000.000');
    writeln('C = Rp2.500.000');
    write('Masukkan Golongan Karyawan (A/B/C) : '); 
readln(Golongan);

    write('Masukkan Total Jam Kerja (Mingguan) : '); 
readln(JamKerja);

    Golongan := upcase(Golongan);

    GajiPokok := 0;
    UangLembur := 0;
    Bonus := 0;

    case Golongan of
        'A': GajiPokok := 1500000;
        'B': GajiPokok := 2000000;
        'C': GajiPokok := 2500000;
    else
        GajiPokok := 0; 
end;

    case (GajiPokok > 0) of
    true:
    begin
        if JamKerja > 40 then
        begin
        JamLembur := JamKerja - 40;
        UangLembur := JamLembur * 20000;
        end;

        if (Golongan = 'C') and (JamKerja > 50) then
    begin
        Bonus := 100000;
    end;

            TotalGaji := GajiPokok + UangLembur + Bonus;

    writeln;
    writeln('Golongan Karyawan : ', Golongan);
    writeln('Total Jam Kerja : ', JamKerja, ' Jam');
    writeln('Gaji Pokok : Rp', GajiPokok);
    writeln('Uang Lembur : Rp', UangLembur);
    writeln('Bonus Tambahan : Rp', Bonus);
    writeln('Total Gaji Akhir : Rp', TotalGaji);
    end;

    false:
    begin
        writeln;
        writeln('Golongan Karyawan Tidak Valid!');
    end;
end;

readln;
end.