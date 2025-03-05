import 'dosen.dart';

class Mahasiswa {
  String? _nim;
  Dosen? _wali;

  Mahasiswa(this._nim, this._wali);

  String getNim() {
    return this._nim!;
  }

  void setNim(String nim) {
    _nim = nim;
  }

  Dosen getWali() {
    return this._wali!;
  }

  void setWali(Dosen dosen) {
    this._wali!;
  }
}
