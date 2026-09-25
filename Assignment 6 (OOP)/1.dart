//Create a Student class with attributes name, id, and cgpa. Create an object and display its information.
import 'dart:io';

class Student {
  String name;
  int id;
  double cgpa;

  Student(this.name, this.id, this.cgpa);

  void displayInfo() {
    print("\nStudent Information:");
    print("Name: $name");
    print("ID: $id");
    print("CGPA: $cgpa");
  }
}

void main() {
  print("Enter student name:");
  String name = stdin.readLineSync()!;

  print("Enter student ID:");
  int id = int.parse(stdin.readLineSync()!);

  print("Enter student CGPA:");
  double cgpa = double.parse(stdin.readLineSync()!);

  Student student1 = Student(name, id, cgpa);

  student1.displayInfo();
}