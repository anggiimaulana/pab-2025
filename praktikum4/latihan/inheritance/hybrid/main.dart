import 'dosen.dart';
import 'mahasiswa_dalam_negeri.dart';
import 'mahasiswa_luar_negeri.dart';

void main() {
  print("List Mahasiswa dan Dosen Polindra");
  var mdm = MahasiswaDalamNegeri(nama: "Maulana", nim: "2307059", nik: "123");
  print(
    "Mahasiswa Dalam Negeri - Nama: ${mdm.getNama()}, NIM: ${mdm.getNim()}, NIK: ${mdm.getNama()}",
  );

  MahasiswaLuarNegeri mlm = MahasiswaLuarNegeri(
    nama: "Rokhmatullah",
    nim: "2307061",
    passport: "321",
  );
  print(
    "Mahasiswa Luar Negeri - Nama: ${mlm.getNama()}, NIM: ${mlm.getNim()}, NIK: ${mlm.getpassport()}",
  );

  Dosen dsn = Dosen(nama: "Anggi Maulana, S.Tr.Kom., M.Kom", nidn: "321");
  print("Dosen - Nama: ${dsn.getNama()}, NIDN: ${dsn.getNidn()}");
}
