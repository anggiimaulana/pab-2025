import 'mahasiswa.dart';

class MahasiswaLuarNegeri extends Mahasiswa {
  String? _passport;

  MahasiswaLuarNegeri({String? nim, String? nama, String? passport})
    : super(nim: nim, nama: nama) {
    this._passport = passport;
  }

  set passport(String passport) => this._passport = passport;
  String get passport => this._passport!;

  String getpassport() {
    return this._passport!;
  }

  void setpassport(String passport) {
    _passport = passport;
  }
}
