program Soal5_261401086_Putri_Khairunnisa;
uses crt;

var
    JumlahMahasiswa, JumlahTugas : integer;
    NomorMahasiswa, NomorTugas : integer;
    TotalLulus, TotalTidakLulus : integer;
    NilaiTugas, TotalNilai, RataRata : real;

begin
clrscr;
    write('Masukkan Jumlah Mahasiswa (M) : '); 
readln(JumlahMahasiswa);
    write('Masukkan Jumlah Tugas (N) : '); 
readln(JumlahTugas);

    TotalLulus := 0;
    TotalTidakLulus := 0;

    for NomorMahasiswa := 1 to JumlahMahasiswa do
        begin
    writeln;
        writeln('Data Mahasiswa Ke-', NomorMahasiswa);

    TotalNilai := 0;

    for NomorTugas := 1 to JumlahTugas do
        begin
        write('Masukkan Nilai Tugas Ke-', NomorTugas, ' : '); 
    readln(NilaiTugas);

            TotalNilai := TotalNilai + NilaiTugas;
    end;

    RataRata := TotalNilai / JumlahTugas;
    write('Rata-rata Nilai : ', RataRata:0:2);

    if RataRata >= 65 then
        begin
        writeln(' LULUS');
        TotalLulus := TotalLulus + 1; 
        end
    else
        begin
        writeln(' TIDAK LULUS');
        TotalTidakLulus := TotalTidakLulus + 1; 
        end;
    end;

writeln;
    writeln('Total Mahasiswa LULUS : ', TotalLulus);
    writeln('Total Mahasiswa TIDAK LULUS : ', TotalTidakLulus);

readln;
end.