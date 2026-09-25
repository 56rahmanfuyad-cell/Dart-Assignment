//Create a generic method findLargest<T extends num>() with two parameters that returns the larger of two numeric values.
import 'dart:io';

T findLargest<T extends num>(T value1, T value2) {
  if (value1 > value2) {
    return value1;
  } else {
    return value2;
  }
}

void main() {
  print("Enter first number:");
  double value1 = double.parse(stdin.readLineSync()!);

  print("Enter second number:");
  double value2 = double.parse(stdin.readLineSync()!);

  double largest = findLargest<double>(value1, value2);

  print("Largest value: $largest");
}