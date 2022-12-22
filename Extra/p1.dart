// write a flutter code find the diffrence between the square of the sum and the sum of the square of the first n numbers;

import 'dart:io';

void main(List<String> args) {
  print("Enter A Number : ");
  int n = int.parse(stdin.readLineSync()!);
  int sum1 = 0;
  int sum2 = 0;
  for (var i = 1; i <= n; i++) {
    sum1 = sum1 + i;
    sum2 = sum2 + i * i;
  }
  var ans1 = sum1 * sum1;
  var ans2 = sum2;
  var ans3 = ans1 - ans2;
  print("Sum Of Square : $ans1");
  print("Square Of Sum : $ans2");
  print("Diffrence : $ans3");
}
