//Person class with displayInfo(), then override it in Teacher and Student
import 'dart:io';

class Person {
  void displayInfo() {
    print("This is a person.");
  }
}

class Teacher extends Person {
  String name;

  Teacher(this.name);

  @override
  void displayInfo() {
    print("Teacher Name: $name");
  }
}

class Student extends Person {
  String name;

  Student(this.name);

  @override
  void displayInfo() {
    print("Student Name: $name");
  }
}

void main() {
  print("Enter teacher name:");
  String teacherName = stdin.readLineSync()!;

  print("Enter student name:");
  String studentName = stdin.readLineSync()!;

  Teacher teacher = Teacher(teacherName);
  Student student = Student(studentName);

  teacher.displayInfo();
  student.displayInfo();
}