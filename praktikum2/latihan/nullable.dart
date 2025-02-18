void main() {
  // null safety (?) -> membuat variable dengan default nilai null
  String? data;

  // null check (!) -> memeriksa variable yang mungkin bernilai null
  var nilai = int.parse(data!);

  print(nilai);
}
