// Fungsi untuk menambahkan buku
import 'dart:io';

import 'tugas_3.dart';

void tambahBuku() {
  stdout.write("Masukkan ID buku: ");
  String id = stdin.readLineSync() ?? '';

  if (buku.any((b) => b['id'] == id)) {
    print("ID buku sudah ada! Silakan gunakan ID lain.");
    return;
  }

  stdout.write("Masukkan Judul buku: ");
  String judul = stdin.readLineSync() ?? '';

  if (buku.any((b) => b['judul'].toLowerCase() == judul.toLowerCase())) {
    print("Judul buku sudah ada! Masukkan judul lain.");
    return;
  }

  stdout.write("Masukkan Penerbit: ");
  String penerbit = stdin.readLineSync() ?? '';

  stdout.write("Masukkan Stok buku (minimal 2): ");
  int? stok = int.tryParse(stdin.readLineSync() ?? '');

  if (stok == null || stok < 2) {
    print("Stok minimal harus 2.");
    return;
  }

  buku.add({'id': id, 'judul': judul, 'penerbit': penerbit, 'stok': stok});
  print("Buku berhasil ditambahkan!\n");
}
