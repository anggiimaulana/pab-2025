class Mobil {
  String? _merk;
  int? _cc;

  Mobil({String? merk, int? cc}) {
    this._merk = merk;
    this._cc = cc;
  }

  void setMerk(String merk) => this._merk = merk;
  void setCc(int cc) => this._cc = cc;
  String getMerk() => this._merk!;
  int getCc() => this._cc!;
  void showInfoMobil() => print("${this._merk} ${this._cc}cc");

}
