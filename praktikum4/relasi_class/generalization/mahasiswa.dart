import 'person.dart';

class Mahasiswa extends Person {
  String? _nim;

  Mahasiswa(String nama, this._nim) : super(nama);

  String getNim() => this._nim!;

  void setNim(String nim) => this._nim = nim;
}
