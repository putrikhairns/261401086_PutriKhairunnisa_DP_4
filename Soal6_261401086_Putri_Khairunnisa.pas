program Soal6_261401086_Putri_Khairunnisa;
uses crt;

var
    NilaiTugas, NilaiUTS, NilaiUAS, PersenHadir, NilaiAkhir : real;
    IndeksHuruf : char;

begin
clrscr;
    write('Masukkan Nilai Tugas (0-100) : '); readln(NilaiTugas);
    write('Masukkan Nilai UTS (0-100) : '); readln(NilaiUTS);
    write('Masukkan Nilai UAS (0-100) : '); readln(NilaiUAS);
    write('Masukkan Persentase Kehadiran (%): '); readln(PersenHadir);

        NilaiAkhir := (0.30 * NilaiTugas) + (0.30 * NilaiUTS) + (0.40 * NilaiUAS);

    if NilaiAkhir >= 85 then
IndeksHuruf := 'A'
    else if (NilaiAkhir >= 75) and (NilaiAkhir < 85) then
IndeksHuruf := 'B'
    else if (NilaiAkhir >= 60) and (NilaiAkhir < 75) then
IndeksHuruf := 'C'
    else if (NilaiAkhir >= 50) and (NilaiAkhir < 60) then
IndeksHuruf := 'D'
    else
IndeksHuruf := 'E';

writeln;
    writeln('Nilai Akhir : ', NilaiAkhir:0:2);
    writeln('Indeks Huruf : ', IndeksHuruf);

write('Status : ');
    if (NilaiAkhir >= 60) and (PersenHadir >= 80) then
writeln('LULUS')
    else
writeln('TIDAK LULUS');

readln;
end.