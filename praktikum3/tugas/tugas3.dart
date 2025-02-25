import 'dart:io';

List<Map<String, dynamic>> buku = [];
List<Map<String, String>> mahasiswa = [];
List<Map<String, dynamic>> peminjam = [];

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

  int jumlahPinjaman = peminjam.where((p) => p['nim'] == nim).length;
  if (jumlahPinjaman >= 2) {
    print("Mahasiswa hanya diperbolehkan meminjam maksimal 2 buku.");
    return;
  }

  stdout.write("Masukan ID Buku yang dipinjam: ");
  String idBuku = stdin.readLineSync() ?? '';

  var dataBuku = buku.firstWhere((b) => b['id'] == idBuku, orElse: () => {});

  if (dataBuku.isEmpty) {
    print("Buku tidak ditemukan!");
    return;
  }

  if (dataBuku['stok'] <= 1) {
    print("Buku ini tidak dapat dipinjam karena stok hanya tersisa 1!");
    return;
  }

  // mengurangi stok buku
  dataBuku['stok'] -= 1;

  peminjam.add({
    "nim": nim,
    "nama": mahasiswaData['nama'],
    "id_buku": dataBuku['id'],
    "judul": dataBuku['judul']
  });

  print("\nPeminjaman berhasil!");
  print("====================");
}

// Fungsi untuk menampilkan semua data buku
void tampilkanBuku() {
  print("\n=== Daftar Buku ===");
  if (buku.isEmpty) {
    print("Belum ada data buku.");
  } else {
    for (var b in buku) {
      print(
          "ID: ${b['id']}, Judul: ${b['judul']}, Penerbit: ${b['penerbit']}, Stok: ${b['stok']}");
    }
  }
  print("\n");
}

// Fungsi untuk menampilkan semua mahasiswa
void tampilkanMahasiswa() {
  print("\n=== Daftar Mahasiswa ===");
  if (mahasiswa.isEmpty) {
    print("Belum ada data mahasiswa.");
  } else {
    for (var m in mahasiswa) {
      print("NIM: ${m['nim']}, Nama: ${m['nama']}");
    }
  }
  print("\n");
}

// Fungsi untuk menampilkan semua peminjaman
void tampilkanPeminjaman() {
  print("\n=== Daftar Peminjaman ===");
  if (peminjam.isEmpty) {
    print("Belum ada data peminjaman.");
  } else {
    for (int i = 0; i < peminjam.length; i++) {
      print(
          "${i + 1}. NIM: ${peminjam[i]['nim']}, Nama: ${peminjam[i]['nama']}, Buku: ${peminjam[i]['judul']}");
    }
  }
  print("\n");
}

// Menu utama
void main() {
  while (true) {
    print("==== Sistem Perpustakaan ====");
    print("1. Tambah Buku");
    print("2. Tambah Mahasiswa");
    print("3. Pinjam Buku");
    print("4. Tampilkan Buku");
    print("5. Tampilkan Mahasiswa");
    print("6. Tampilkan Peminjaman");
    print("7. Keluar");
    stdout.write("Pilih menu (1-7): ");

    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        tambahBuku();
        break;
      case '2':
        tambahMahasiswa();
        break;
      case '3':
        pinjamBuku();
        break;
      case '4':
        tampilkanBuku();
        break;
      case '5':
        tampilkanMahasiswa();
        break;
      case '6':
        tampilkanPeminjaman();
        break;
      case '7':
        print("Terima kasih! Program selesai");
        return;
      default:
        print("Pilihan tidak valid! Silahkan coba lagi. \n");
    }
  }
}
