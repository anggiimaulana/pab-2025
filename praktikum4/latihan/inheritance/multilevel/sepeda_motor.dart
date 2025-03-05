import 'kendaraan_bermotor.dart';

class SepedaMotor extends KendaraanBermotor {
  String? _merk;

  String getMerk() {
    return _merk!;
  }

  void setMerek(String merk) {
    _merk = merk;
  }
}
