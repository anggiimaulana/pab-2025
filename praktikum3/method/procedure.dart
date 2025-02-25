void main() {
  var waktusekarang = 17;
  var dia = "Anggi Maulana";
  if (waktusekarang < 10) {
    play(dia);
  } else if (waktusekarang > 10) {
    eat(dia);
  } else {
    play(dia);
  }
}

void eat(var nama) {
  print("$nama sedang makan");
}

void play(var nama) {
  print("$nama sedang bermain");
}
