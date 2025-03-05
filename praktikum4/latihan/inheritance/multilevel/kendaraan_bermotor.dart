import 'transportasi.dart';

class KendaraanBermotor extends Transportasi {
  int? _cc;
  String? _bahanBakar;

  int getCc() {
    return _cc!;
  }

  void setCc(int cc) {
    _cc = cc;
  }

  String getBahanBakar() {
    return _bahanBakar!;
  }

  String setBahanBakar(String bahanBakar) {
    return _bahanBakar = bahanBakar;
  }
}
