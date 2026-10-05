program soal4_261401024_NailahSakhiSinambela;
uses crt;
var
  a, b, hasil: integer;
  pilih: integer;
  ulang: char;
begin
     repeat
    writeln;
    writeln('Kalkulator Sederhana');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi (1-5): ');
    readln(pilih);

    if (pilih >= 1) and (pilih <= 5) then
    begin
      write('Masukkan bilangan pertama: ');
      readln(a);
      write('Masukkan bilangan kedua: ');
      readln(b);

      case pilih of
        1: hasil := a + b;
        2: hasil := a - b;
        3: hasil := a * b;
        4: begin
             if b <> 0 then
               writeln('Hasil pembagian real: ', a / b:0:2)
             else
               writeln('Error: Pembagian dengan nol tidak diperbolehkan.');
           end;
        5: begin
             if b <> 0 then
               writeln('Hasil DIV: ', a div b, ' dan MOD: ', a mod b)
             else
               writeln('Error: Pembagian dengan nol tidak diperbolehkan.');
           end;
      end;

      if (pilih >= 1) and (pilih <= 3) then
        writeln('Hasil operasi: ', hasil);
    end
    else
      writeln('Pilihan tidak valid. Silakan pilih antara 1 hingga 5.');

      write('Apakah ingin melakukan perhitungan lagi?(Y/T) ');
    readln(ulang);
  until (ulang = 'T') or (ulang = 't');
  writeln('Terima kasih telah menggunakan kalkulator sederhana ini.');
end.
