import 'dosen.dart';
import 'mahasiswa.dart';

void main() {
  Dosen dsn1 = Dosen("123");
  Dosen dsn2 = Dosen("321");

  Mahasiswa mhs1 = Mahasiswa("2307059", dsn1);
  Mahasiswa mhs2 = Mahasiswa("2307061", dsn2);
  Mahasiswa mhs3 = Mahasiswa("2307072", dsn1);
  Mahasiswa mhs4 = Mahasiswa("2307065", dsn2);

  dsn1.addMahasiswaWali(mhs1);
  dsn1.addMahasiswaWali(mhs2);
  dsn2.addMahasiswaWali(mhs3);
  dsn2.addMahasiswaWali(mhs4);

  dsn1.showMahasiswaWali();
  dsn2.showMahasiswaWali();
}
