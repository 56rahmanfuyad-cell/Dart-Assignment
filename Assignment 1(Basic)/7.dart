//Find quotient and remainder of two integers
import 'dart:io';

void main() {
  print("Enter first number:");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter second number:");
  int b = int.parse(stdin.readLineSync()!);

  print("Quotient = ${a ~/ b}");
  print("Remainder = ${a % b}");
}