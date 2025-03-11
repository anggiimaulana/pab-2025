void main() {
  // list untuk menyimpan data mhs
  List<Map<String, dynamic>> mahasiswa = [
    {
      "nim": 2307079,
      "nama": "Syahirah",
      "matkul": ["PBO", "PAB"]
    },
    {
      "nim": 2307055,
      "nama": "Agnita Najwa",
      "matkul": ["KKC", "Basis Data Lanjut"]
    },
    {
      "nim": 2307078,
      "nama": "Salma Rusyda",
      "matkul": ["Big Data", "Bahasa Inggris 2"]
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
