//MathHelper — User Input
import 'dart:io';

class MathHelper {
  static int addition(int a, int b) {
    return a + b;
  }

  static int multiplication(int a, int b) {
    return a * b;
  }
}

void main() {
  print("Enter first number:");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter second number:");
  int b = int.parse(stdin.readLineSync()!);

  print("Addition: ${MathHelper.addition(a, b)}");
  print("Multiplication: ${MathHelper.multiplication(a, b)}");
}