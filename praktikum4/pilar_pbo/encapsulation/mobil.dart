class Mobil {
  // Private
  String? _merk;
  int? _cc;

  // constructor
  Mobil({String? merk, int? cc}) {
    this._merk = merk;
    this._cc = cc;
  }

  // setter
  void setMerk(String merk) {
    this._merk = merk;
  }

  void setCc(int cc) {
    this._cc = cc;
  }

  // getter
  String getMerk() {
    return this._merk!;
  }

  int getCc() {
    return this._cc!;
  }

  void showInfoMobil() {
    print(_merk);
    print(_cc);
  }
}
