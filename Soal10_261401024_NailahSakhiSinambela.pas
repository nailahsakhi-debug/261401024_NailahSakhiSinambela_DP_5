program Soal10_261401024_NailahSakhiSinambela;
uses crt;
var
  h : integer;
begin
  write('Masukkan Angka (1-7): ');
  readln(h);
  case h of
    1: writeln('Hari Senin');
    2: writeln('Hari Selasa');
    3: writeln('Hari Rabu');
    4: writeln('Hari Kamis');
    5: writeln('Hari Jumat');
    6: writeln('Hari Sabtu');
    7: writeln('Hari Minggu');
  else
    writeln('Angka tidak valid (harus 1-7).');
  end;
end.