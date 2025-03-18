void main() {
  // deklarasi Map cara 1
  var mahasiswa = <int, String>{1: "Erwan", 2: "Malik", 3: "Bayu"};
  print(mahasiswa);

  // deklarasi Map cara 2
  Map nilai = {'Anggi': 89, 'Erwan': 77};
  print(nilai);

  // deklarasi Map cara 3
  var mataKuliah = {1: "PBO", 2: "PAB", 3: "CT", 4: "MPPI", 5: "KKC"};
  print(mataKuliah[2]);

  // deklarasi Map cara 4
  var email = new Map();
  email[1] = "anggabos@ui.ac.id";
  email[2] = "erwan@ui.ac.id";
  print(email);
}
