// Fungsi untuk menampilkan semua peminjaman
import 'tugas_3.dart';

void tampilkanPeminjaman() {
  print("\n=== Daftar Peminjaman ===");
  if (peminjaman.isEmpty) {
    print("Belum ada data peminjaman.\n");
  } else {
    for (int i = 0; i < peminjaman.length; i++) {
      print(
          "\n${i + 1}. NIM: ${peminjaman[i]['nim']}, Nama: ${peminjaman[i]['nama']}, Buku: ${peminjaman[i]['judul']}\n");
    }
  }
  print("\n");
}
