import 'sepeda_motor.dart';

void main() {
  var motor = SepedaMotor();

  motor.setMerek("Honda");
  motor.setCc(150);
  motor.setBahanBakar("Pertamax Oplosan");
  motor.setSpeed(160);
  motor.setColor("FF0B0B");

  print("Merk motor: ${motor.getMerk()}");
  print("CC: ${motor.getCc()}");
  print("Bahan bakar: ${motor.getBahanBakar()}");
  print("Kecepatan: ${motor.getSpeed()}");
  print("Warna: ${motor.getColor()}");
  motor.turnLeft();
  motor.turnRight();
}
