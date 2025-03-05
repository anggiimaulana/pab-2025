import 'mahasiswa.dart';
import 'matakuliah.dart';

void main() {
  Matakuliah mk1 = Matakuliah("PBO", "Pemrograman Berorientasi Objek");
  Matakuliah mk2 = Matakuliah("PAB", "Pemrograman Aplikasi Bergerak");
  Matakuliah mk3 = Matakuliah("PBW", "Pemrograman Berbasis Web");
  Matakuliah mk4 = Matakuliah("PBWL", "Pemrograman Berbasis Web Lanjut");

  Mahasiswa mhs = Mahasiswa("2307059");
  mhs.mengambilMatkul(mk4);
  mhs.mengambilMatkul(mk2);
  mhs.mengambilMatkul(mk3);
  mhs.mengambilMatkul(mk1);

  mhs.showDataMatkul();
}
