import 'person.dart';

class Mahasiswa extends Person {
  String? _nim;

  Mahasiswa({String? nama, String? nim}) : super(nama: nama) {
    this._nim = nim;
  }

  String getNim() => this._nim!;

  void setNim(String nim) => this._nim = nim;
}
