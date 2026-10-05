program Soal1_261401024_NailahSakhiSinambela;
uses crt;
var
  n, i      : integer;
  harga     : array[1..100] of real;
  total, persen, diskon, bayar : real;
begin
  write('Masukkan jumlah barang : ');
  readln(n);
  if (n < 1) or (n > 100) then
  begin
    writeln('N harus antara 1 sampai 100.');
    exit;
  end;

  total := 0;
  for i := 1 to n do
  begin
    write('Harga barang ke-', i, ' : Rp');
    readln(harga[i]);
    total := total + harga[i];
  end;

 
  if total < 100000 then
    persen := 0
  else if total < 500000 then
    persen := 10
  else
    persen := 20;

  diskon := total * persen / 100;
  bayar  := total - diskon;

  writeln;
  for i := 1 to n do
    writeln('Barang ke-', i, ' : Rp', harga[i]:0:0);
    writeln('Total Sebelum Diskon : Rp', total:0:0);
    writeln('Diskon (', persen:0:0, '%)       : Rp', diskon:0:0);
    writeln('Total Bayar Akhir    : Rp', bayar:0:0);
end.