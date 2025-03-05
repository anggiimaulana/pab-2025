import 'person.dart';

class Dosen extends Person {
  String? _nidn;

  Dosen(String nama, String nidn) : super(nama) {
    this._nidn = nidn;
  }

  set nidn(String nidn) => this._nidn;
  String get nidn => this._nidn!;

  String getNidn() {
    return this._nidn!;
  }

  void setNidn(String nidn) {
    _nidn = nidn;
  }
}
