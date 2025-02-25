import 'dart:io';

void main() {
  stdout.write("Masukan jumlah anak ayam: ");
  var jumlahAnakAyam = stdin.readLineSync();
  int anakAyam = int.parse('$jumlahAnakAyam');
  print("Anak ayam turun $anakAyam");

  for (int i = anakAyam; i > 1; i--) {
    print("Anak ayam turun ${i - 1}");
  }

  print("Anak ayam turun 1, mati satu tinggal induknya");
}
