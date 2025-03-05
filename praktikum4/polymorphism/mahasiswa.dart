import 'dart:io';
import 'person.dart';

class Mahasiswa extends Person {
  String? _nim;

  Mahasiswa(String? nama, this._nim) : super(nama);

  set nim(String nim) => _nim;
  String get nim => _nim!;

  @override
  void showInfo() {
    super.showInfo();
    stdout.write("\n" + this._nim!);
  }
}
