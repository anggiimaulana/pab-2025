import 'dart:io';

// Struktur Data
List<Map<String, dynamic>> buku = [];
List<Map<String, String>> mahasiswa = [];
List<Map<String, dynamic>> peminjaman = [];

// Fungsi untuk menambahkan buku
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

// Fungsi untuk menambahkan mahasiswa
void tambahMahasiswa() {
  stdout.write("Masukkan NIM Mahasiswa: ");
  String nim = stdin.readLineSync() ?? '';

  if (mahasiswa.any((m) => m['nim'] == nim)) {
    print("NIM sudah terdaftar! Masukkan NIM lain.");
    return;
  }

  stdout.write("Masukkan Nama Mahasiswa: ");
  String nama = stdin.readLineSync() ?? '';

  if (mahasiswa.any((m) => m['nama']?.toLowerCase() == nama.toLowerCase())) {
    print("Nama mahasiswa sudah ada! Masukkan nama lain.");
    return;
  }

  mahasiswa.add({'nim': nim, 'nama': nama});
  print("Mahasiswa berhasil ditambahkan!\n");
}

// Fungsi untuk melakukan peminjaman buku
void pinjamBuku() {
  stdout.write("Masukkan NIM Mahasiswa: ");
  String nim = stdin.readLineSync() ?? '';

  var mahasiswaData = mahasiswa.firstWhere(
    (m) => m['nim'] == nim,
    orElse: () => {},
  );

  if (mahasiswaData.isEmpty) {
    print("Mahasiswa tidak ditemukan!");
    return;
  }

  // Cek jumlah buku yang sudah dipinjam mahasiswa ini
  int jumlahPinjaman = peminjaman.where((p) => p['nim'] == nim).length;
  if (jumlahPinjaman >= 2) {
    print("Mahasiswa hanya diperbolehkan meminjam maksimal 2 buku.");
    return;
  }

  stdout.write("Masukkan ID Buku yang ingin dipinjam: ");
  String idBuku = stdin.readLineSync() ?? '';

  var bukuData = buku.firstWhere(
    (b) => b['id'] == idBuku,
    orElse: () => {},
  );

  if (bukuData.isEmpty) {
    print("Buku tidak ditemukan!");
    return;
  }

  if (bukuData['stok'] <= 1) {
    print("Buku ini tidak dapat dipinjam karena stok hanya tersisa 1.");
    return;
  }

  // Mengurangi stok buku
  bukuData['stok'] -= 1;

  peminjaman.add({
    'nim': nim,
    'nama': mahasiswaData['nama'],
    'id_buku': bukuData['id'],
    'judul': bukuData['judul'],
  });

  print("Peminjaman berhasil!\n");
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
  if (peminjaman.isEmpty) {
    print("Belum ada data peminjaman.");
  } else {
    for (int i = 0; i < peminjaman.length; i++) {
      print(
          "${i + 1}. NIM: ${peminjaman[i]['nim']}, Nama: ${peminjaman[i]['nama']}, Buku: ${peminjaman[i]['judul']}");
    }
  }
  print("\n");
}

// Menu utama
void main() {
  while (true) {
    print("=== Sistem Perpustakaan ===");
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
        print("Terima kasih! Program selesai.");
        return;
      default:
        print("Pilihan tidak valid! Silakan coba lagi.\n");
    }
  }
}
