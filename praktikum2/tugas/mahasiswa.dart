void main() {
  // list untuk menyimpan data mhs
  List<Map<String, dynamic>> mahasiswa = [
    {
      "nim": 2307079,
      "nama": "Anggi Maulana",
      "matkul": ["PBO", "PAB", "CT", "MPPI", "KKC"]
    },
    {
      "nim": 2307055,
      "nama": "Bayu Rokhmatullah",
      "matkul": ["PBO", "KKC", "KKC", "BDL"]
    },
    {
      "nim": 2307078,
      "nama": "Erwan Kurniawan",
      "matkul": ["Proyek 2", "Basis Data", "Bahasa Indonesia"]
    },
  ];

  // menampilkan data mahasiswa
  for (int i = 0; i < mahasiswa.length; i++) {
    print("${i}:");
    print("NIM    : ${mahasiswa[i]['nim']}");
    print("Nama   : ${mahasiswa[i]['nama']}");
    print("Matkul : ");
    // looping data matkul
    for (int j = 0; j < mahasiswa[i]['matkul'].length; j++) {
      print(" ${j} = ${mahasiswa[i]['matkul'][j]}");
    }
    print("");
  }
}
