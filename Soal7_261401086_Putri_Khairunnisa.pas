program Soal7_261401086_Putri_Khairunnisa;
uses crt;

var
    JenisKendaraan : char;
    LamaJam : integer;
    TotalTarif : longint;

begin
clrscr;
    writeln('Pilihan Kode Kendaraan:');
    writeln('M = Mobil');
    writeln('K = Motor');
    writeln('B = Bus');
    write('Masukkan Kode Kendaraan (M/K/B) : '); 
readln(JenisKendaraan);

    write('Masukkan Lama Parkir (Jam) : '); 
readln(LamaJam);

    JenisKendaraan := upcase(JenisKendaraan);

case JenisKendaraan of
    'M': 
    begin
        if LamaJam > 10 then
        TotalTarif := 30000
        else if LamaJam > 1 then
        TotalTarif := 5000 + ((LamaJam - 1) * 3000)
        else
        TotalTarif := 5000;
    end;

    'K': 
    begin
        if LamaJam > 10 then
        TotalTarif := 10000
        else if LamaJam > 1 then
        TotalTarif := 2000 + ((LamaJam - 1) * 1000)
        else
        TotalTarif := 2000;
    end;

    'B': 
    begin
        if LamaJam > 10 then
        TotalTarif := 50000
        else if LamaJam > 1 then
        TotalTarif := 10000 + ((LamaJam - 1) * 5000)
        else
        TotalTarif := 10000;
    end;

    else
    TotalTarif := 0; 
    end;

writeln;
    case (TotalTarif > 0) of
        true:
        begin
        writeln('Kode Kendaraan : ', JenisKendaraan);
        writeln('Lama Parkir : ', LamaJam, ' Jam');
        writeln('Total Tarif : Rp', TotalTarif);
    end;

        false:
        begin
        writeln('Kode Kendaraan Tidak Valid!');
    end;
    end;

readln;
end.