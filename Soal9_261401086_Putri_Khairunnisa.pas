program Soal9_261401086_Putri_Khairunnisa;
uses crt;

var
    Tahun, Bulan, JumlahHari : integer;
    Kabisat : boolean;

begin
clrscr;
    write('Masukkan Tahun : '); 
readln(Tahun);
    write('Masukkan Nomor Bulan (1-12) : '); 
readln(Bulan);

        if (Tahun mod 400 = 0) or ((Tahun mod 4 = 0) and (Tahun mod 100 <> 0)) then
    Kabisat := true
        else
    Kabisat := false;

    case Bulan of
    1, 3, 5, 7, 8, 10, 12: 
        JumlahHari := 31;

    4, 6, 9, 11: 
        JumlahHari := 30;

    2: 
    begin
        if Kabisat then
        JumlahHari := 29
    else
        JumlahHari := 28;
    end;

    else
        JumlahHari := 0;
    end;

writeln;
    if JumlahHari > 0 then
    begin
        writeln('Tahun : ', Tahun);
        writeln('Bulan Ke- : ', Bulan);

    if Kabisat then
        writeln('Status Tahun: Tahun Kabisat')
    else
        writeln('Status Tahun: Bukan Kabisat');
        writeln('Jumlah Hari : ', JumlahHari, ' Hari');
    end
    else
        writeln('Nomor bulan harus antara 1 sampai 12!');

readln;
end.