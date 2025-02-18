import 'dart:io';

void main() {
  print("Masukan nama Mata Kuliah: ");
  String? matkul = stdin.readLineSync();

  print("Masukan Nilai UTS: ");
  int? uts = int.parse(stdin.readLineSync()!);

  print("Masukan nilai UAS: ");
  int? uas = int.parse(stdin.readLineSync()!);

  print("Masukan nilai Tugas: ");
  int? tugas = int.parse(stdin.readLineSync()!);

  double total_nilai = (uts + uas + tugas)/3;

  print("Nilai Mata Kuliah $matkul adalah ${total_nilai.toStringAsFixed(2)}");
}
