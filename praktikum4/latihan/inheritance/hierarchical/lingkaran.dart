import 'bangun_datar.dart';

class Lingkaran extends BangunDatar {
  int? _jariJari;

  Lingkaran({int? jariJari, int? panjang, int? lebar})
    : super(panjang: panjang, lebar: lebar) {
    _jariJari = jariJari;
  }

  int getJariJari() {
    return this._jariJari!;
  }

  void setJariJari(int jarijari) {
    _jariJari = jarijari;
  }
}
