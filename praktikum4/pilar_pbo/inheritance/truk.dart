import 'dart:io';
import 'kendaraan.dart';

class Truk extends Kendaraan {
  // properti
  String? _gandengan;

  // constructor
  Truk({int? cc, String? merk, String? gandengan}) : super(cc: cc, merk: merk) {
    this._gandengan = gandengan;
  }

  // setter & getter
  set gandengan(String gandengan) => _gandengan;
  String get gandengan => _gandengan!;

  void maju() {
    super.maju();
    stdout.write(" dengan gandengan" + this._gandengan!);
  }
}
