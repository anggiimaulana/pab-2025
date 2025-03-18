import 'lingkaran.dart';
import 'segitiga.dart';

void main() {
  var segitiga = Segitiga(panjang: 10, lebar: 20, sisiMiring: 90);
  print(
    "Segitiga - Panjang: ${segitiga.getPanjang()}, Lebar: ${segitiga.getLebar()}, Sisi sisi miring: ${segitiga.getSisiMiring()}",
  );

  var lingkaran = Lingkaran(panjang: 22, lebar: 28, jariJari: 30);
  print(
    "Lingkaran - Panjang: ${lingkaran.getPanjang()}, Lebar: ${lingkaran.getLebar()}, Jari-jari: ${lingkaran.getJariJari()}",
  );
}
