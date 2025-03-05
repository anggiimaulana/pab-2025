// Fungsi untuk menampilkan semua mahasiswa
import 'tugas_3.dart';

void tampilkanMahasiswa() {
  print("\n=== Daftar Mahasiswa ===");
  if (mahasiswa.isEmpty) {
    print("\nBelum ada data mahasiswa.\n");
  } else {
    for (var m in mahasiswa) {
      print("\nNIM: ${m['nim']}, Nama: ${m['nama']}\n");
    }
  }
  print("\n");
}
