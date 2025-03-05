class Matakuliah {
  String? _kodeMatkul;
  String? _namaMatkul;

  Matakuliah(this._kodeMatkul, this._namaMatkul);

  String getKodeMatkul() {
    return this._kodeMatkul!;
  }

  void setKodeMatkul(String kode) {
    this._kodeMatkul = kode;
  }

  String getNamaMatkul() {
    return this._namaMatkul!;
  }

  void setNamaMatkul(String nama) {
    this._namaMatkul = nama;
  }
}
