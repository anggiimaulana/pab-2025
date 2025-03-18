import 'mahasiswa.dart';
import 'matakuliah.dart';

void main() {
  Matakuliah mk1 = Matakuliah(kodeMatkul: "PBO", namaMatkul: "Pemrograman Berorientasi Objek");
  Matakuliah mk2 = Matakuliah(kodeMatkul: "PAB", namaMatkul: "Pemrograman Aplikasi Bergerak");
  Matakuliah mk3 = Matakuliah(kodeMatkul: "PBW", namaMatkul: "Pemrograman Berbasis Web");
  Matakuliah mk4 = Matakuliah(kodeMatkul: "PBWL", namaMatkul: "Pemrograman Berbasis Web Lanjut");

  Mahasiswa mhs = Mahasiswa(nim: "2307059");
  mhs.mengambilMatkul(mk4);
  mhs.mengambilMatkul(mk2);
  mhs.mengambilMatkul(mk3);
  mhs.mengambilMatkul(mk1);

  mhs.showDataMatkul();
}
