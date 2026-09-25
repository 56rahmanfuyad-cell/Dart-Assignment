//Remove all whitespaces from a string
import 'dart:io';

void main() {
  print("Enter a string:");
  String text = stdin.readLineSync()!;

  String result = text.replaceAll(" ", "");

  print("Result: $result");
}