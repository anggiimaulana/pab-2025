void main() {
  // deklarasi Map cara 1
  var mahasiswa = <int, String>{1: "nana", 2: "salma", 3: "agnita"};
  print(mahasiswa);

  // deklarasi Map cara 2
  Map nilai = {'Syahirah': 89, 'Najmi': 77};
  print(nilai);

  // deklarasi Map cara 3
  var mataKuliah = {1: "PBO", 2: "PAB", 3: "CT", 4: "MPPI", 5: "KKC"};
  print(mataKuliah[2]);

  // deklarasi Map cara 4
  var email = new Map();
  email[1] = "syah1222@gmail.com";
  email[2] = "mie@gmail.com";
  print(email);
}
