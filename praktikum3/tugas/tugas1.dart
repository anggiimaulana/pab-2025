import 'dart:io';

void main() {
  // apakah pengguna memiliki kartu?
  stdout.write("Apakah anda memiliki kartu? (y/n): ");
  String? kartu = stdin.readLineSync();
  bool memilikiKartu = (kartu?.toLowerCase() == 'y');

  // Masukan jumlah belanja
  stdout.write("Masukan jumlah belanja: ");
  int? belanja = int.tryParse(stdin.readLineSync() ?? '0');

  int diskon = 0;

  if (memilikiKartu) {
    if (belanja != null && belanja > 100000 && belanja <= 500000) {
      diskon = 15000;
    } else if (belanja != null && belanja > 500000) {
      diskon = 50000;
    } else {
      diskon = 0;
    }
  } else {
    if (belanja != null && belanja > 100000) {
      diskon = 5000;
    }
  }

  var hasilDiskon = (belanja ?? 0) - diskon;

  print("Total belanja: $belanja");
  print("Total diskon: $diskon");
  print("Harga setelah diskon: $hasilDiskon");
}
