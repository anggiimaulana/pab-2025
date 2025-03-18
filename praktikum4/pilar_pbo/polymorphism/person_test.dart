import 'mahasiswa.dart';
import 'person.dart';

void main() {
  final person = new Person(nama: "Anggii Maulana\n");
  person.showInfo();

  final mahasiswa = new Mahasiswa(nama: "Anggi", nim: "2307059");
  mahasiswa.showInfo();
}
