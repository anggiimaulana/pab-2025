import 'dart:io';

List<Map<String, dynamic>> buku = [];
List<Map<String, String>> mahasiswa = [];
List<Map<String, dynamic>> peminjaman = [];

void tambahBuku() {
  stdout.write("Masukan ID Buku: ");
  String id = stdin.readLineSync() ?? '';

  if (buku.any((b) => b['id'] == id)) {
    print("ID buku sudah ada! Silahkan gunakan ID lain!");
    return;
  }

  stdout.write("Masukan Judul Buku: ");
  String judul = stdin.readLineSync() ?? '';

  if (buku.any((b) => b['judul'] == judul)) {
    print("Judul buku sudah ada! Masukan judul lain!");
    return;
  }

  stdout.write("Masukan Penerbit: ");
  String penerbit = stdin.readLineSync() ?? '';

  stdout.write("Masukan stok buku (minimal 2): ");
  int? stok = int.tryParse(stdin.readLineSync() ?? '');

  if (stok != null && stok < 2) {
    print("Stok minimal 2 bro!");
    return;
  }

  buku.add({"id": id, "judul": judul, "penerbit": penerbit, "stok": stok});
  print("Buku $judul berhasil ditambahkan!");
}

void tambahMahasiswa() {
  stdout.write("Masukan NIM Mahasiswa:");
  String nim = stdin.readLineSync() ?? '';

  if (mahasiswa.any((m) => m['nim'] == nim)) {
    print("NIM sudah terdaftar! Masukan NIM lain!");
  }

  stdout.write("Masukan Nama Mahasiswa: ");
  String namaMahasiswa = stdin.readLineSync() ?? '';

  mahasiswa.add({"nim": nim, "nama": namaMahasiswa});
}

void pinjamBuku() {
  stdout.write("Masukan NIM Mahasiswa: ");
  String nim = stdin.readLineSync() ?? '';

  var mahasiswaData = mahasiswa.firstWhere(
    (m) => m['nim'] == nim,
    orElse: () => {},
  );

  if (mahasiswaData.isEmpty) {
    print("Mahasiswa tidak ditemukan!");
    return;
  }

  int jumlahPinjaman = peminjaman.where((p) => p['nim'] == nim).length;
  if (jumlahPinjaman >= 2) {
    print("Mahasiswa hanya diperbolehkan meminjam maksimal 2 buku.");
    return;
  }

  stdout.write("Masukan ID Buku yang dipinjam: ");
  String idBuku = stdin.readLineSync() ?? '';

  var dataBuku = buku.firstWhere((b) => b['id'] == buku, orElse: () => {});
}
