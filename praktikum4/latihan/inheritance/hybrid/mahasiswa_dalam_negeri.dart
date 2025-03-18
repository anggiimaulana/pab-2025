import 'mahasiswa.dart';

class MahasiswaDalamNegeri extends Mahasiswa {
  String? _nik;

  MahasiswaDalamNegeri({String? nama, String? nim, String? nik})
    : super(nama: nama, nim: nim) {
    this._nik;
  }

  String getNik() {
    return this._nik!;
  }

  void setNik(String nik) {
    _nik = nik;
  }
}
