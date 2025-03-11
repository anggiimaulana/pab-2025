import 'dart:io';

void main() {
  print("Masukan nama Mata Kuliah: ");
  // input matkul
  String? matkul = stdin.readLineSync();

  print("Masukan Nilai UTS: ");
  // input nilai uts
  int? uts = int.parse(stdin.readLineSync()!);

  print("Masukan nilai UAS: ");
  // input nilai uas
  int? uas = int.parse(stdin.readLineSync()!);

  print("Masukan nilai Tugas: ");
  // input nilai tugas
  int? tugas = int.parse(stdin.readLineSync()!);

  // perhitungan nilai
  double total_nilai = (uts + uas + tugas)/3;

  // print nilai
  print("Nilai Mata Kuliah $matkul adalah ${total_nilai.toStringAsFixed(2)}");
}
