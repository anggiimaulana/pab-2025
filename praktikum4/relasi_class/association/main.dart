import 'dosen.dart';
import 'mahasiswa.dart';

void main() {
  Dosen dsn1 = Dosen(nidn: "123");
  Dosen dsn2 = Dosen(nidn: "321");

  Mahasiswa mhs1 = Mahasiswa(nim: "2307059", wali: dsn1);
  Mahasiswa mhs2 = Mahasiswa(nim: "2307061", wali: dsn2);
  Mahasiswa mhs3 = Mahasiswa(nim: "2307072", wali: dsn1);
  Mahasiswa mhs4 = Mahasiswa(nim: "2307065", wali: dsn2);

  dsn1.addMahasiswaWali(mhs1);
  dsn1.addMahasiswaWali(mhs3);
  dsn2.addMahasiswaWali(mhs2);
  dsn2.addMahasiswaWali(mhs4);

  dsn1.showMahasiswaWali();
  dsn2.showMahasiswaWali();
}
