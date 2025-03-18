class Person {
  String? _nama;

  Person({String? nama}) {
    this._nama = nama;
  }

  String getNama() {
    return this._nama!;
  }

  void setNama(String nama) {
    this._nama = nama;
  }
}
