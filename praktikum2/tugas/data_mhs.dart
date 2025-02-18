void main() {
  // List untuk menyimpan data mahasiswa
  List<Map<String, dynamic>> mahasiswa = [
    {
      "nim": 2307059,
      "nama": "Anggi Maulana",
      "matkul": ["PBO", "PAB", "CT", "MPPI", "KKC"]
    },
    {
      "nim": 2307061,
      "nama": "Bayu Rokhmatullah",
      "matkul": ["PBO", "PAB", "KKC", "BDL"]
    },
    {
      "nim": 2307065,
      "nama": "Erwan Kurniawan",
      "matkul": ["Proyek 2", "Basis Data", "Bahasa Indonesia"]
    },
  ];

  // Menampilkan data mahasiswa
  // Looping data mahasiswa
  for (int i = 0; i < mahasiswa.length; i++) {
    print("Mahasiswa ${i + 1}:");
    print("NIM    : ${mahasiswa[i]['nim']}");
    print("Nama   : ${mahasiswa[i]['nama']}");
    print("Matkul : ");
    // Looping data matkul berdasarkan mahasiswa
    for (int j = 0; j < mahasiswa[i]['matkul'].length; j++) {
      print(" ${j} = ${mahasiswa[i]['matkul'][j]}");
    }
    print("");
  }
}
