program Soal8_261401024_NailahSakhiSinambela;
uses crt;
const
  JAM_STANDAR = 40;
  TARIF_LEMBUR = 20000;
var
  gol : char;
  jam : integer;
  pokok, lembur, bonus, total : longint;
  valid : boolean;
begin
  write('Golongan (A/B/C): ');
  readln(gol);
  gol := upcase(gol);
  write('Total jam kerja per minggu: ');
  readln(jam);

  valid := true;
  case gol of
    'A': pokok := 1500000;
    'B': pokok := 2000000;
    'C': pokok := 2500000;
  else
    valid := false;
  end;

  if not valid then
    writeln('Golongan tidak valid.')
  else
  begin
    lembur := 0;
    bonus  := 0;
    if jam > JAM_STANDAR then
      lembur := (jam - JAM_STANDAR) * TARIF_LEMBUR;
    if (gol = 'C') and (jam > 50) then
      bonus := 100000;
    total := pokok + lembur + bonus;

    writeln;
    writeln('===== RINCIAN GAJI =====');
    writeln('Gaji Pokok : Rp', pokok);
    writeln('Lembur     : Rp', lembur);
    writeln('Bonus      : Rp', bonus);
    writeln('Total Gaji : Rp', total);
  end;
end.