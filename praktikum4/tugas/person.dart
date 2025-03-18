class Person {
  String? _nama;

  Person({String? nama}) {
    this._nama = nama;
  }
  String getNama() => _nama!;
  void showPerson() => print("Nama: $_nama");
}
