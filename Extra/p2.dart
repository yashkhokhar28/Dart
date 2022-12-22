// write a dart code to calculate the value of register input 3 color and find the registance
// black 0
// brown 1
// red 2
// oragne 3
// yellow 4
// green 5
// blue 6
// violet 7
// grey 8
// white 9

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  List<String> list = [
    "Black",
    "Brown",
    "Red",
    "Orange",
    "Yellow",
    "Green",
    "Blue",
    "Violet",
    "Grey",
    "White"
  ];
  print(
      "Black , Brown , Red , Orange , Yellow , Green , Blue , Violet , Grey , White ");
  print("Enter Color From Above");
  print("Enter First Color");
  String c1 = stdin.readLineSync()!;
  print("Enter Second Color");
  String c2 = stdin.readLineSync()!;
  print("Enter Third Color");
  String c3 = stdin.readLineSync()!;

  if (c1 == c2 && c2 == c3) {
    print("Invalid Input");
  } else {
    print(list.indexOf(c1) * 10 + list.indexOf(c2) * pow(10, list.indexOf(c3)));
  }
}
