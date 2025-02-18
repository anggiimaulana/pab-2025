void main() {
  var num1 = 5;
  var num2 = 10;
  var res = num1 > num2;
  print("num1 greater than num2 :: " + res.toString());

  res = num1 < num2;
  print("num1 less than num2 :: " + res.toString());

  res = num1 >= num2;
  print("num1 greater than or equal to num2 :: " + res.toString());

  res = num1 <= num2;
  print("num1 less than or equal to num2 :: " + res.toString());

  res = num1 == num2;
  print("num1 equal to num2 :: " + res.toString()); 

  res = num1 != num2;
  print("num1 not equal to num2 :: " + res.toString());
}
