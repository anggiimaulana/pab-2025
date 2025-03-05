class Person {
  String? _nama;

  Person(this._nama);
  String getNama() => _nama!;
  void showPerson() => print("Nama: $_nama");
}
