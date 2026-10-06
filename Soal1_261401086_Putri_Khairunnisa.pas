program Soal1_261401086_Putri_Khairunnisa;
uses crt;

var
    Urutan, TotalBarang : integer;
    HargaBarang, TotalSebelum, Diskon, TotalBayar : real;

begin
clrscr;

    write('Masukkan jumlah barang yang dibeli : '); 
readln(TotalBarang);
    TotalSebelum := 0;

    for Urutan := 1 to TotalBarang do
begin
    write('Masukkan harga barang ke-', Urutan, ': Rp'); 
readln(HargaBarang);
    TotalSebelum := TotalSebelum + HargaBarang;
end;

    if TotalSebelum < 100000 then
diskon := 0
    else if (TotalSebelum >= 100000) and (TotalSebelum < 500000) then
diskon := 0.10 * TotalSebelum
    else if TotalSebelum >= 500000 then
diskon := 0.20 * TotalSebelum;

        TotalBayar := TotalSebelum - Diskon;

    writeln;
writeln('Total Sebelum Diskon : Rp', TotalSebelum:0:0);
writeln('Besar Diskon : Rp', Diskon:0:0);
writeln('Total Bayar Akhir : Rp', TotalBayar:0:0);
readln;

end.