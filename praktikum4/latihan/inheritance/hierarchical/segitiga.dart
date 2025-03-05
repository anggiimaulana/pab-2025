import 'bangun_datar.dart';

class Segitiga extends BangunDatar {
  int? _sisiMiring;

  Segitiga(int panjang, int lebar, int sisiMiring) : super(panjang, lebar) {
    _sisiMiring = sisiMiring;
  }

  int getSisiMiring() {
    return this._sisiMiring!;
  }

  void setSisiMiring(int sisiMiring) {
    _sisiMiring = sisiMiring;
  }
}
