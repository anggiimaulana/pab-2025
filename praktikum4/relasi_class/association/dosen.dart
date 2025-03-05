import 'mahasiswa.dart';

class Dosen {
  String? _nidn;
  List<Mahasiswa> _listMahasiswa = [];

  Dosen(this._nidn);

  String getNidm() {
    return this._nidn!;
  }

  void setNidn(String nidn) {
    _nidn = nidn;
  }

  void addMahasiswaWali(Mahasiswa mhs) {
    _listMahasiswa.add(mhs);
  }

  void showMahasiswaWali() {
    print("NIDN: " + _nidn!);
    print("Daftar mahasiswa wali");
    for (var data in _listMahasiswa) {
      print("NIM: " + data.getNim());
    }
    print("\n");
  }
}
