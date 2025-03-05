import 'dosen.dart';
import 'mahasiswa_dalam_negeri.dart';
import 'mahasiswa_luar_negeri.dart';

void main() {
  print("List Mahasiswa dan Dosen Polindra");
  var mdm = MahasiswaDalamNegeri("Maulana", "2307059", "123");
  print(
    "Mahasiswa Dalam Negeri - Nama: ${mdm.getNama()}, NIM: ${mdm.getNim()}, NIK: ${mdm.getNama()}"
  );

  MahasiswaLuarNegeri mlm = MahasiswaLuarNegeri(
    "Rokhmatullah",
    "2307061",
    "321",
  );
  print(
    "Mahasiswa Luar Negeri - Nama: ${mlm.getNama()}, NIM: ${mlm.getNim()}, NIK: ${mlm.getpassport()}"
  );

  Dosen dsn = Dosen("Anggi Maulana, S.Tr.Kom., M.Kom", "321");
  print("Dosen - Nama: ${dsn.getNama()}, NIDN: ${dsn.getNidn()}");
}
