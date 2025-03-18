import 'dart:io';

class Kendaraan {
  // properti
  int? _cc;
  String? _merk;

  // constructor
  Kendaraan({String? merk, int? cc}) {
    this._cc = cc;
    this._merk = merk;
  }

  void maju() {
    stdout.write(
      "Kendaraan merk: " +
          this._merk! +
          " dengan cc " +
          this._cc!.toString() +
          " maju",
    );
  }
}
