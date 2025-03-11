import 'dart:io';
import 'pinjam_buku.dart';
import 'tambah_buku.dart';
import 'tambah_mhs.dart';
import 'tampilkan_buku.dart';
import 'tampilkan_mhs.dart';
import 'tampilkan_peminjam.dart';

List<Map<String, String>> mahasiswa = [];
List<Map<String, dynamic>> buku = [];
List<Map<String, dynamic>> peminjaman = [];

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
        print("\nTerima kasih! Program selesai.");
        return;
      default:
        print("Pilihan tidak valid! Silakan coba lagi.\n");
    }
  }
}
