import 'dart:io';

void main() {
  stdout.write("Nilai ujian: ");
  var nilai = stdin.readLineSync();
  int NILAI = int.parse('$nilai');
  if (NILAI > 70) {
    print("Anda lulus");
  } else {
    print("Anda tidak lulus");
  }
}
