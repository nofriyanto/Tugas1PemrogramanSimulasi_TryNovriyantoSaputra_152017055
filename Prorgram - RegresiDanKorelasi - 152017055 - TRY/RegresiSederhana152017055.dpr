program RegresiSederhana152017055;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  x, y, x1, x2, x3, x4, y1, y2, y3, y4: Integer;
  sigmayi, sigmaxi2, sigmaxi, sigmaxiyi, paket1kons, paket2kons, paket3kons, paket4kons, HasilKonstanta : Real;
  paket1koef, paket2koef, paket3koef, paket4koef, HasilKoefisien : Real;
  paket1kore, paket2kore, paket3kore, paket4kore, paket5kore, hasilakarkore, HasilKorelasi : Real;

begin
  Writeln ('');
  Writeln ('----------- REGRESI LINIER SEDERHANA -----------');
  Writeln ('');
  Writeln ('Nama  :   Try Novriyanto Saputra');
  Writeln ('NRP   :   15-2017-055');
  Writeln ('Kelas :   BB-Informatika');
  Writeln ('');
  Writeln ('------------------------------------------------');
  write ('Masukan Nilai X1 = '); Readln(x1);
  write ('Masukan Nilai Y1 = '); Readln(y1);
  write ('Masukan Nilai X2 = '); Readln(x2);
  write ('Masukan Nilai Y2 = '); Readln(y2);
  write ('Masukan Nilai X3 = '); Readln(x3);
  write ('Masukan Nilai Y3 = '); Readln(y3);
  write ('Masukan Nilai X4 = '); Readln(x4);
  write ('Masukan Nilai Y4 = '); Readln(y4);
  Writeln ('------------------------------------------------');

  sigmayi := y1+y1+y3+y4;
  sigmaxi2:= (x1*x1)+(x2*x2)+(x3*x3)+(x4*x4);
  paket1kons := sigmayi*sigmaxi2;
  Writeln ('Hasil Konstanta Paket 1 = ', paket1kons:4:0);

  sigmaxi := x1+x2+x3+x4;
  sigmaxiyi := (x1*y1)+(x2*y2)+(x3*y3)+(x4*y4);
  paket2kons := sigmaxi*sigmaxiyi;
  Writeln ('Hasil Konstanta Paket 2 = ', paket2kons:4:0);

  paket3kons := 4*sigmaxi2;
  Writeln ('Hasil Konstanta Paket 3 = ', paket3kons:4:0);

  paket4kons := sigmaxi*sigmaxi;
  Writeln ('Hasil Konstanta Paket 4 = ', paket4kons:4:0);

  HasilKonstanta := (paket1kons-paket2kons)/(paket3kons-paket4kons);
  Writeln ('Hasil Akhir Konstanta (a) = ', HasilKonstanta:4:0);
  Writeln ('------------------------------------------------');

  paket1koef := 4*sigmaxiyi;
  Writeln ('Hasil Koefisien Paket 1 = ', paket1koef:4:0);

  paket2koef := sigmaxi*sigmayi;
  Writeln ('Hasil Koefisien Paket 2 = ', paket2koef:4:0);

  paket3koef := 4*sigmaxi;
  Writeln ('Hasil Koefisien Paket 3 = ', paket3koef:4:0);

  paket4koef := sigmaxi*sigmaxi;
  Writeln ('Hasil Koefisien Paket 4 = ', paket4koef:4:0);

  HasilKoefisien := (paket1koef-paket2koef)/(paket3koef-paket4koef);
  Writeln ('Hasil Akhir Koefisien (b) = ', HasilKoefisien:0:4);

  Writeln ('------------------------------------------------');
  Writeln ('Persamaan Regresi :   Y = a + bx');
  //PersamaanRegresi := HasilKonstanta + HasilKoefisien;
  Writeln ('Hasil Persamaan Regresi = ', HasilKonstanta:4:0,'+',HasilKoefisien:4:0,'x');
  Writeln ('------------------------------------------------');

  paket1kore := 4*sigmaxiyi;
  Writeln ('Hasil Korelasi Pearson Paket 1 = ', paket1kore:4:0);

  paket2kore := sigmaxi*sigmayi;
  Writeln ('Hasil Korelasi Pearson Paket 2 = ', paket2kore:4:0);

  paket3kore := (4*sigmaxi2)-(sigmaxi*sigmaxi);
  Writeln ('Hasil Korelasi Pearson Paket 3 = ', paket3kore:4:0);

  paket4kore := (4*(sigmayi*sigmayi))-((y1+y2+y3+y4)*(y1+y2+y3+y4));
  Writeln ('Hasil Korelasi Pearson Paket 4 = ', paket4kore:4:2);

  paket5kore := paket3kore*paket4kore;
  hasilakarkore := Sqrt(paket5kore);
  Writeln ('Hasil Akar Paket Bawah Korelasi =', hasilakarkore:4:0);

  HasilKorelasi := (paket1kore-paket2kore)/(hasilakarkore);
  Writeln ('Hasil Akhir Korelasi Pearson (Rxy) = ', HasilKorelasi);
  Writeln ('------------------------------------------------');

  Readln;
end.
