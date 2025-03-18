import 'motor.dart';

class Pengemudi {
  String? _nama;
  Motor? _motor;

  Pengemudi({String? nama}) {
    this._nama = nama;
  }
  void setNama(String nama) => _nama = nama;
  String getNama() => _nama!;
  void setMotor(Motor motor) => _motor = motor;
  Motor getMotor() => _motor!;
}
