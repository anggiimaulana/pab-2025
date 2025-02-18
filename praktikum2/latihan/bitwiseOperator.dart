void main() {
  var a = 2;
  var b = 3;

  var result = (a & b);
  print("(a & b) => ${result}");
  result = (a | b);
  print("(a | b) => ${result}");
  result = (a ^ b);
  print("(a ^ b) => ${result}");
  result = (~b);
  print("(~b) => ${result}");
}
