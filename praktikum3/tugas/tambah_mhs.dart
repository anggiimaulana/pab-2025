// Fungsi untuk menambahkan mahasiswa
import 'dart:io';

import 'tugas_3.dart';

void tambahMahasiswa() {
  stdout.write("Masukkan NIM Mahasiswa: ");
  String nim = stdin.readLineSync() ?? '';

  if (mahasiswa.any((m) => m['nim'] == nim)) {
    print("\nNIM sudah terdaftar! Masukkan NIM lain.\n");
    return;
  }

  stdout.write("Masukkan Nama Mahasiswa: ");
  String nama = stdin.readLineSync() ?? '';

  if (mahasiswa.any((m) => m['nama']?.toLowerCase() == nama.toLowerCase())) {
    print("\nNama mahasiswa sudah ada! Masukkan nama lain.\n");
    return;
  }

  mahasiswa.add({'nim': nim, 'nama': nama});
  print("\nMahasiswa berhasil ditambahkan!\n");
}