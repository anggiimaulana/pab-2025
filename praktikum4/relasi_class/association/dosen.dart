import 'mahasiswa.dart';

class Dosen {
  String _nidn;
  List<Mahasiswa> _listMahasiswa;

  Dosen({String nidn = "", List<Mahasiswa>? listMahasiswa})
    : _nidn = nidn,
      _listMahasiswa = listMahasiswa ?? [];

  String getNidn() => _nidn;
  void setNidn(String nidn) => _nidn = nidn;

  void addMahasiswaWali(Mahasiswa mhs) {
    _listMahasiswa.add(mhs);
  }

  void showMahasiswaWali() {
    print("NIDN: $_nidn");
    print("Daftar mahasiswa wali:");
    if (_listMahasiswa.isEmpty) {
      print("Belum ada mahasiswa.");
    } else {
      for (var data in _listMahasiswa) {
        print("- NIM: ${data.getNim()}");
      }
    }
    print("\n");
  }
}
