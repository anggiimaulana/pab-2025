import 'dosen.dart';

class Mahasiswa {
  String _nim;
  Dosen? _wali;

  Mahasiswa({String nim = "", Dosen? wali}) : _nim = nim, _wali = wali;

  String getNim() => _nim;
  void setNim(String nim) => _nim = nim;

  Dosen? getWali() => _wali;
  void setWali(Dosen dosen) => _wali = dosen;
}
