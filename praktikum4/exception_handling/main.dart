import 'pembagian.dart';

void main() {
  String x = "delapan";
  double y = 0;
  num hasil;

  final pembagian = new Pembagian();
  try {
    hasil = pembagian.hitungPembagian(double.parse(x), y);
    print(hasil);
  } catch (e) {
    print(e);
  }

  print("Hello World");
}
