import 'dart:io';

main() {
  print("LAMPU LALU LINTAS");
  stdout.write("Warna: ");
  var warna = stdin.readLineSync();
  String arti;
  switch (warna) {
    case "merah":
      {
        arti = "Berhenti";
        break;
      }
    case "kuning":
      {
        arti = "Hati-hati";
        break;
      }
    case "hijau":
      {
        arti = "Maju";
        break;
      }
    default:
      {
        arti = "Warna tidak diketahui";
      }
  }
  print(arti);
}
