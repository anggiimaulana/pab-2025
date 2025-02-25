import 'dart:io';

void main() {
  stdout.write("Nilai ujian: ");
  var nilai = stdin.readLineSync();
  int NILAI = int.parse('$nilai');
  if (NILAI > 90) {
    print("Grade A");
  } else if (NILAI > 80) {
    print("Grade B");
  } else if (NILAI > 70) {
    print("Grade C");
  } else {
    print("Grade D");
  }
}
