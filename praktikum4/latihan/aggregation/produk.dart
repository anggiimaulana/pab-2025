import 'jenis_produk.dart';

class Produk {
  String? kode;
  String? nama;
  List<JenisProduk> dataJenisProduk = [];

  Produk({String? kode, String? nama}) {
    this.kode = kode;
    this.nama = nama;
  }

  void showJenisProduk() {
    print("Produk: $nama - ($kode)");
    print("Jenis produk:");
    for (var jenisProduk in dataJenisProduk) {
      print("Kode Produk: ${jenisProduk.kodeJenis}");
      print("Jenis Produk: ${jenisProduk.namaJenis}");
    }
  }
}
