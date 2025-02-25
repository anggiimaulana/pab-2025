void main() {
  var cemilan = ["Ayam Baput", "Cireng", "Mie Gacoan", "Kwetiau"];
  print("Daftar Cemilan");
  print("--------------");
  for (var makanan in cemilan) {
    print(makanan);
  }
  print("--------------");
  print("Total Cemilan: ${cemilan.length}");
}
