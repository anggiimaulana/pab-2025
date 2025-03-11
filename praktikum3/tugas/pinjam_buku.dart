import 'dart:io';

import 'tugas_3.dart';

void pinjamBuku() {
  stdout.write("Masukkan NIM Mahasiswa: ");
  String nim = stdin.readLineSync() ?? '';

  var mahasiswaData = mahasiswa.firstWhere(
    (m) => m['nim'] == nim,
    orElse: () => {},
  );

  if (mahasiswaData.isEmpty) {
    print("\nMahasiswa tidak ditemukan!\n");
    return;
  }

  // Cek jumlah buku yang sudah dipinjam
  int jumlahPinjaman = peminjaman.where((p) => p['nim'] == nim).length;
  if (jumlahPinjaman >= 2) {
    print("\nMahasiswa hanya diperbolehkan meminjam maksimal 2 buku.\n");
    return;
  }

  stdout.write("Masukkan ID Buku yang ingin dipinjam: ");
  String idBuku = stdin.readLineSync() ?? '';

  var bukuData = buku.firstWhere(
    (b) => b['id'] == idBuku,
    orElse: () => {},
  );

  if (bukuData.isEmpty) {
    print("\nBuku tidak ditemukan!\n");
    return;
  }

  if (bukuData['stok'] <= 1) {
    print("\nBuku ini tidak dapat dipinjam karena stok hanya tersisa 1.\n");
    return;
  }

  // kurangi stok buku
  bukuData['stok'] -= 1;

  peminjaman.add({
    'nim': nim,
    'nama': mahasiswaData['nama'],
    'id_buku': bukuData['id'],
    'judul': bukuData['judul'],
  });

  print("\nPeminjaman berhasil!\n");
}