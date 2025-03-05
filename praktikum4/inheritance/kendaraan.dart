import 'dart:io';

class Kendaraan {
  // properti
  int? _cc;
  String? _merk;

  // constructor
  Kendaraan(this._cc, this._merk);

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
