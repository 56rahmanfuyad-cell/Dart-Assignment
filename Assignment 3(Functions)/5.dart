//Find the area of a circle using a function
import 'dart:io';
import 'dart:math';

double areaCircle(double radius) {
  return pi * radius * radius;
}

void main() {
  print("Enter radius:");
  double r = double.parse(stdin.readLineSync()!);

  print("Area = ${areaCircle(r)}");
}