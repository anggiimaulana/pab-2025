import 'dart:io';

class Person {
  String? _nama;

  Person(this._nama);

  set nama(String nama) => _nama;
  String get nama => _nama!;

  void showInfo() {
    stdout.write(nama);
  }
}
