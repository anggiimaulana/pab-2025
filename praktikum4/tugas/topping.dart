class Topping {
  num? _hargaTopping;
  String? _namaTopping;

  Topping({num? hargaTopping, String? namaTopping}) {
    this._hargaTopping = hargaTopping;
    this._namaTopping = namaTopping;
  }

  void setHargaTopping(num hargaTopping) => _hargaTopping = hargaTopping;
  num getHargaTopping() => _hargaTopping!;
  void setNamaTopping(String namaTopping) => _namaTopping = namaTopping;
  String getNamaTopping() => _namaTopping!;
}
