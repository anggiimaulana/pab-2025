import 'dart:io';
import 'kendaraan.dart';
import 'truk.dart';

void main() {
  Kendaraan kendaraanInfo = new Kendaraan(2000, "Toyota");
  kendaraanInfo.maju();

  stdout.write("\n");

  Truk trukInfo = new Truk(212112, "Mitsubitshi", "Container");
  trukInfo.maju();
}
