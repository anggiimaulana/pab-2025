import 'bangun_datar.dart';

class Persegi extends BangunDatar {
  num? sisi;

  @override
  void showInfo() {
    print("Persegi");
  }

  @override
  num hitungKeliling() {
    return this.sisi! * 4;
  }

  @override
  num hitungLuas() {
    return this.sisi! * this.sisi!;
  }
}
