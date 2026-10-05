program Soal2_261401024_NailahSakhiSinambela;
uses crt;

const
  Sandi = 'pascal123';
  max   = 3;

var
  i        : integer;
  password : string;
  Login    : boolean;

begin
  clrscr;
  Login := false;
  i := 0;

  repeat
    i := i + 1;
    write('Masukkan password : ');
    readln(password);

    if password = Sandi then
    begin
      Login := true;
      break;               
    end
    else
      writeln('Password salah. Silakan coba lagi.');
  until i >= max;

  if Login then
    writeln('Login Berhasil! Selamat Datang')
  else
    writeln('Akses Ditolak! Akun Terkunci.');

  readln;
end.