import 'dart:io';

void main() {
  stdout.write("\nMasukan jumlah anak ayam: ");
  var jumlahAnakAyam = stdin.readLineSync();
  int anakAyam = int.parse('$jumlahAnakAyam');
  print("\nAnak ayam turun $anakAyam");

  for (int i = anakAyam; i > 1; i--) {
    print("Anak ayam turun $i, mati satu tinggal ${i - 1}");
  }

  print("Anak ayam turun 1, mati satu tinggal induknya");
}
