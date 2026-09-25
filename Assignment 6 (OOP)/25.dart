//Create a generic method isEqual<T>() with two parameters that compares two values of the same type and returns true if they are equal else false.
import 'dart:io';

bool isEqual<T>(T value1, T value2) {
  return value1 == value2;
}

void main() {
  print("Enter first value:");
  String value1 = stdin.readLineSync()!;

  print("Enter second value:");
  String value2 = stdin.readLineSync()!;

  bool result = isEqual<String>(value1, value2);

  print("Are they equal? $result");
}