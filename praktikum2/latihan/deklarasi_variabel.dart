enum Status { disetujui, ditolak, diperbaiki, ditinjau }

void main() {
  // membuat variabel dengan tipe data string, int, double, bool
  String nama = "Syahirah";
  int umur = 19;
  double tinggi = 160;
  bool isLulus = true;

  // membuat variabel dengan var
  var alamat = "Juntinyuat, Indramayu";

  // mencetak variabel
  print("Nama saya $nama. Umur saya $umur tahun");
  print("Tinggi badan saya sekitar $tinggi cm");
  print("Saat ini saya tinggal di $alamat");
  print("Status proposal Skripsi saya saat ini adalah ${Status.disetujui.name}");
  print("Kelulusan saya tahun ini diharapkan " + isLulus.toString());
}
