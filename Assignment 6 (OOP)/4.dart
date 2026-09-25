//Car Class — Named Constructors
import 'dart:io';

class Car {
  Car.manual() {
    print("This is a manual car.");
  }

  Car.automatic() {
    print("This is an automatic car.");
  }
}

void main() {
  print("Enter 1 for Manual Car");
  print("Enter 2 for Automatic Car");

  String? input = stdin.readLineSync();
  int? choice = int.tryParse(input ?? '');

  if (choice == 1) {
    Car.manual();
  } else if (choice == 2) {
    Car.automatic();
  } else {
    print("Invalid choice.");
  }
}