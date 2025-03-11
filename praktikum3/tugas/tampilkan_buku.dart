import 'tugas_3.dart';

void tampilkanBuku() {
  print("\n=== Daftar Buku ===");
  if (buku.isEmpty) {
    print("\nBelum ada data buku.\n");
  } else {
    for (var b in buku) {
      print(
          "\nID: ${b['id']}, Judul: ${b['judul']}, Penerbit: ${b['penerbit']}, Stok: ${b['stok']}\n");
    }
  }
  print("\n");
}
