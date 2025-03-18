class Matakuliah {
  String? _kodeMatkul;
  String? _namaMatkul;

  Matakuliah({String? kodeMatkul, String? namaMatkul}) {
    this._kodeMatkul = kodeMatkul;
    this._namaMatkul = namaMatkul;
  }

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
