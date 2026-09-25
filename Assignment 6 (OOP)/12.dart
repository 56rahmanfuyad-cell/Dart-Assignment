//Create a Person superclass and an Employee subclass that adds salary information
import 'dart:io';

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
  }
}

class Employee extends Person {
  double salary;

  Employee(String name, int age, this.salary) : super(name, age);

  void displayEmployeeInfo() {
    displayInfo();
    print("Salary: $salary");
  }
}

void main() {
  print("Enter employee name:");
  String name = stdin.readLineSync()!;

  print("Enter employee age:");
  int age = int.parse(stdin.readLineSync()!);

  print("Enter employee salary:");
  double salary = double.parse(stdin.readLineSync()!);

  Employee employee = Employee(name, age, salary);

  print("\nEmployee Information:");
  employee.displayEmployeeInfo();
}