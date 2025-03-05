import 'lingkaran.dart';
import 'segitiga.dart';

void main() {
  var segitiga = Segitiga(10, 12, 90);
  print(
    "Segitiga - Panjang: ${segitiga.getPanjang()}, Lebar: ${segitiga.getLebar()}, Sisi sisi miring: ${segitiga.getSisiMiring()}",
  );

  var lingkaran = Lingkaran(10, 16, 20);
  print(
    "Lingkaran - Panjang: ${lingkaran.getPanjang()}, Lebar: ${lingkaran.getLebar()}, Jari-jari: ${lingkaran.getJariJari()}",
  );
}
