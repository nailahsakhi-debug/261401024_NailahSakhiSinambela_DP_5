program Soal5_261401024_NailahSakhiSinambela;
uses crt;
var
  m, n, i, j       : integer;
  nilai, jumlah, rata : real;
  lulus, tidakLulus   : integer;
begin
  clrscr;
  write('Masukkan jumlah mahasiswa (M): ');
  readln(m);
  write('Masukkan jumlah tugas (N)    : ');
  readln(n);

  lulus := 0;
  tidakLulus := 0;
  writeln;

  for i := 1 to m do
  begin
    writeln('Mahasiswa ke-', i);
    jumlah := 0;
    for j := 1 to n do
    begin
      write('Nilai tugas ke-', j, ': ');
      readln(nilai);
      jumlah := jumlah + nilai;
    end;
    rata := jumlah / n;
    write('Rata-rata mahasiswa ke-', i, ' = ', rata:0:2, ' -> ');
    if rata >= 65 then
    begin
      writeln('LULUS');
      lulus := lulus + 1;
    end
    else
    begin
      writeln('TIDAK LULUS');
      tidakLulus := tidakLulus + 1;
    end;
  end;

  writeln;
  writeln('Total mahasiswa LULUS       : ', lulus);
  writeln('Total mahasiswa TIDAK LULUS : ', tidakLulus);
end.