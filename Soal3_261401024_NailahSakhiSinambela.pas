program Soal3_261401024_NailahSakhiSinambela;
uses crt;
var
  n, pilih, i : integer;
begin
  write('Masukkan nilai N: ');
  readln(n);
  writeln('Pilih kategori deret');
  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilihan: ');
  readln(pilih);

  if (pilih <> 1) and (pilih <> 2) then
  begin
    writeln('Pilihan tidak valid.');
    exit;
  end;

  writeln('Hasil deret:');
  i := 0;
  while i < n do
  begin
    i := i + 1;                        
    if (pilih = 1) and (i mod 2 = 0) then continue;
    if (pilih = 2) and (i mod 2 <> 0) then continue;
    if i mod 5 = 0 then continue;

    write(i, ' ');
  end;
  writeln;
end.