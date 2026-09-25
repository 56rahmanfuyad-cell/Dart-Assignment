//Print full name using first and last name
import 'dart:io';

void main() {
  print("Enter your first name:");
  String firstName = stdin.readLineSync()!;

  print("Enter your last name:");
  String lastName = stdin.readLineSync()!;

  print("Full name: $firstName $lastName");
}