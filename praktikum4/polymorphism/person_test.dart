import 'mahasiswa.dart';
import 'person.dart';

void main() {
  final person = new Person("Anggii Maulana\n");
  person.showInfo();

  final mahasiswa = new Mahasiswa("Anggi", "2307059");
  mahasiswa.showInfo();
}
