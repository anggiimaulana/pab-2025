import 'mobil.dart';

void main() {
  Mobil mobilInfo = new Mobil(merk: "Toyota", cc: 1500);
  mobilInfo.setMerk("Honda");
  mobilInfo.setCc(180);
  mobilInfo.showInfoMobil();
}
