//Calculate split amount of a restaurant bill
import 'dart:io';

void main() {
  print("Enter total bill amount:");
  double bill = double.parse(stdin.readLineSync()!);

  print("Enter number of people:");
  int people = int.parse(stdin.readLineSync()!);

  double split = bill / people;

  print("Each person should pay: $split");
}