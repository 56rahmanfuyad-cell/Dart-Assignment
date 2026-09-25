//Customer — User Input + Const Constructor
import 'dart:io';

class Customer {
  final String name;
  final int id;

  const Customer(this.name, this.id);
}

void main() {
  print("Enter customer name:");
  String name = stdin.readLineSync()!;

  print("Enter customer ID:");
  int id = int.parse(stdin.readLineSync()!);

  Customer customer = Customer(name, id);

  print("\nCustomer Information:");
  print("Name: ${customer.name}");
  print("ID: ${customer.id}");
}