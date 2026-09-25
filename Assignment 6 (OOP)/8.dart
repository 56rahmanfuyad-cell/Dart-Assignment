//Employee — Three Employees From User Input
import 'dart:io';

class Employee {
  String name;
  String designation;
  double salary;

  Employee(this.name, this.designation, this.salary);

  void displayInfo() {
    print("Name: $name");
    print("Designation: $designation");
    print("Salary: $salary");
    print("-------------------");
  }
}

void main() {
  List<Employee> employees = [];

  for (int i = 1; i <= 3; i++) {
    print("\nEnter information for Employee $i");

    print("Enter name:");
    String name = stdin.readLineSync()!;

    print("Enter designation:");
    String designation = stdin.readLineSync()!;

    print("Enter salary:");
    double salary = double.parse(stdin.readLineSync()!);

    Employee employee = Employee(name, designation, salary);

    employees.add(employee);
  }

  print("\n===== Employee Details =====");

  for (int i = 0; i < employees.length; i++) {
    employees[i].displayInfo();
  }
}