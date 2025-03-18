import 'mobil.dart';

void main() {
  Mobil mobil1 = Mobil(merk: "Toyota", cc: 1500);
  mobil1.setMerk("Honda");
  mobil1.setCc(180);
  mobil1.showInfoMobil();
}
