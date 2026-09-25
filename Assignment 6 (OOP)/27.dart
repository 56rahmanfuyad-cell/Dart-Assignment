//Create a Company class with Manager and Developer subclasses and calculate monthly salary differently.
import 'dart:io';

class Company {
  String name;
  double baseSalary;

  Company(this.name, this.baseSalary);

  double calculateSalary() {
    return baseSalary;
  }
}

class Manager extends Company {
  double bonus;

  Manager(String name, double baseSalary, this.bonus)
      : super(name, baseSalary);

  @override
  double calculateSalary() {
    return baseSalary + bonus;
  }
}

class Developer extends Company {
  double overtimePay;

  Developer(String name, double baseSalary, this.overtimePay)
      : super(name, baseSalary);

  @override
  double calculateSalary() {
    return baseSalary + overtimePay;
  }
}

void main() {
  print("Enter Manager name:");
  String managerName = stdin.readLineSync()!;

  print("Enter Manager base salary:");
  double managerSalary = double.parse(stdin.readLineSync()!);

  print("Enter Manager bonus:");
  double bonus = double.parse(stdin.readLineSync()!);

  print("\nEnter Developer name:");
  String developerName = stdin.readLineSync()!;

  print("Enter Developer base salary:");
  double developerSalary = double.parse(stdin.readLineSync()!);

  print("Enter Developer overtime pay:");
  double overtime = double.parse(stdin.readLineSync()!);

  Manager manager = Manager(managerName, managerSalary, bonus);
  Developer developer =
      Developer(developerName, developerSalary, overtime);

  print("\nManager: ${manager.name}");
  print("Monthly Salary: ${manager.calculateSalary()}");

  print("\nDeveloper: ${developer.name}");
  print("Monthly Salary: ${developer.calculateSalary()}");
}