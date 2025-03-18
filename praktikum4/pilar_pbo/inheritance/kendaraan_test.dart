import 'dart:io';
import 'kendaraan.dart';
import 'truk.dart';

void main() {
  Kendaraan kendaraanInfo = new Kendaraan(cc: 2000, merk: "Toyota");
  kendaraanInfo.maju();

  stdout.write("\n");

  Truk trukInfo = new Truk(
    cc: 212112,
    merk: "Mitsubitshi",
    gandengan: "Container",
  );
  trukInfo.maju();
}
