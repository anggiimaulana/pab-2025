class Person {
  String? _nama;

  Person(this._nama);

  String getNama() {
    return this._nama!;
  }

  void setNama(String nama) {
    this._nama = nama;
  }
}
