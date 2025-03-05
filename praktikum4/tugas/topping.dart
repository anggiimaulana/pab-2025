class Topping {
  num? _hargaTopping;
  String? _namaTopping;

  Topping(this._hargaTopping, this._namaTopping);
  void setHargaTopping(num hargaTopping) => _hargaTopping = hargaTopping;
  num getHargaTopping() => _hargaTopping!;
  void setNamaTopping(String namaTopping) => _namaTopping = namaTopping;
  String getNamaTopping() => _namaTopping!;
}
