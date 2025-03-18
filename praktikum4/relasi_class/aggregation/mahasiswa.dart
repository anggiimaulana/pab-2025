import 'matakuliah.dart';

class Mahasiswa {
  String? _nim;
  List<Matakuliah> _dataMatkul = [];

  Mahasiswa({String? nim}) {
    this._nim = nim;
  }

  void mengambilMatkul(Matakuliah matkul) => this._dataMatkul.add(matkul);

  String getNim() => this._nim!;

  void setNim(String nim) => _nim = nim;

  void showDataMatkul() {
    print("NIM = " + _nim!);
    print("Data Matakuliah: ");

    for (var element in _dataMatkul) {
      print(element.getKodeMatkul());
      print(element.getNamaMatkul());
    }
  }
}
