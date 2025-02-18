enum Status { disetujui, ditolak, diperbaiki, ditinjau }

void main() {
  // membuat variabel dengan tipe data string, int, double, bool
  String nama = "Anggi Maulana";
  int umur = 19;
  double tinggi = 173.5;
  bool isLulus = true;

  // membuat variabel dengan kata kunci var
  var alamat = "Indramayu, Jawa Barat, Indonesia";

  // mencetak variabel
  print("Nama saya $nama. Umur saya $umur tahun");
  print("Tinggi badan saya sekitar $tinggi cm");
  print("Saat ini saya tinggal di $alamat");
  print("Status proposal Skripsi saya saat ini adalah ${Status.disetujui.name}");
  print("Kelulusan saya tahun ini diharapkan " + isLulus.toString());
}
