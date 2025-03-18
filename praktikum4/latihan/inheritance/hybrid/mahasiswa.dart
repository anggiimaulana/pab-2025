import 'person.dart';

class Mahasiswa extends Person {
  String? _nim;

  Mahasiswa({String? nama, String? nim}) : super(nama: nama) {
    this._nim = nim;
  }

  String getNim() {
    return this._nim!;
  }

  void setNim(String nim) {
    _nim = nim;
  }
}
