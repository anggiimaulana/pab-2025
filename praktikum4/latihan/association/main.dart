import 'motor.dart';
import 'pengemudi.dart';

void main() {
  Pengemudi p1 = Pengemudi("Anggii");
  Pengemudi p2 = Pengemudi("Bayu");

  Motor m1 = Motor(180);
  Motor m2 = Motor(200);

  p1.setMotor(m1);
  p2.setMotor(m2);

  print("Si ${p1.getNama()} mengendarai motor ${m1.getCc()} cc");
  print("Si ${p2.getNama()} mengendarai motor ${m2.getCc()} cc");
}
