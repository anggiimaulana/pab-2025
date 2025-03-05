class BangunDatar {
  int? _panjang;
  int? _lebar;

  BangunDatar(int panjang, int lebar) {
    _panjang = panjang;
    _lebar = lebar;
  }

  int getPanjang() {
    return this._panjang!;
  }

  void setPanjang(int panjang) {
    _panjang = panjang;
  }

  int getLebar() {
    return this._lebar!;
  }

  void setLebar(int lebar) {
    _lebar = lebar;
  }
}
