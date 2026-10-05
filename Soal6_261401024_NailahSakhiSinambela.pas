program Soal6_261401024_NailahSakhiSinambela;
uses crt;
var
  tugas, uts, uas, akhir, hadir : real;
  indeks : char;
begin
  write('Nilai Tugas     : '); 
  readln(tugas);
  write('Nilai UTS       : '); 
  readln(uts);
  write('Nilai UAS       : '); 
  readln(uas);
  write('Kehadiran (%)   : '); 
  readln(hadir);

  akhir := 0.3 * tugas + 0.3 * uts + 0.4 * uas;

  { Indeks huruf }
  if akhir >= 85 then indeks := 'A'
  else if akhir >= 75 then indeks := 'B'
  else if akhir >= 60 then indeks := 'C'
  else if akhir >= 50 then indeks := 'D'
  else indeks := 'E';

  writeln;
  writeln('Nilai Akhir  : ', akhir:0:2);
  writeln('Indeks Huruf : ', indeks);
  write('Status       : ');
  if (akhir >= 60) and (hadir >= 80) then
    writeln('LULUS')
  else
    writeln('TIDAK LULUS');
end.