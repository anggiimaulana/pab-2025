import 'motor.dart';
import 'pengemudi.dart';

void main() {
  Pengemudi p1 = Pengemudi(nama: "Anggii");
  Pengemudi p2 = Pengemudi(nama: "Bayu");

  Motor m1 = Motor(cc: 180);
  Motor m2 = Motor(cc: 200);

  p1.setMotor(m1);
  p2.setMotor(m2);

  print("Si ${p1.getNama()} mengendarai motor ${m1.getCc()} cc");
  print("Si ${p2.getNama()} mengendarai motor ${m2.getCc()} cc");
}
