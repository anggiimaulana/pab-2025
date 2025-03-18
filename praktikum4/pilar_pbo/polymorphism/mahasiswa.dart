import 'dart:io';
import 'person.dart';

class Mahasiswa extends Person {
  String? _nim;

  Mahasiswa({String? nama, String? nim}) : super(nama: nama) {
    this._nim = nim;
  }

  set nim(String nim) => _nim;
  String get nim => _nim!;

  @override
  void showInfo() {
    super.showInfo();
    stdout.write("\n" + this._nim!);
  }
}
