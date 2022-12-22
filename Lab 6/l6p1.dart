// Write a dart code that prompts the user to enter 5 numbers,
//stores them in a list, and displays them in increasing order.

import 'dart:io';

void main(List<String> args) {
  List list = [];
  for (var i = 1; i <= 5; i++) {
    print("Enter [$i] Element : ");
    int element = int.parse(stdin.readLineSync()!);
    list.add(element);
    list.sort();
  }
  print("$list");
}
