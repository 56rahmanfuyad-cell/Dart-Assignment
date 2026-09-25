//Complete Student Management System
import 'dart:io';

abstract class Person {
  String _name;
  int _id;

  Person(this._name, this._id);

  String get name {
    return _name;
  }

  int get id {
    return _id;
  }

  void displayInfo();
}

class Student extends Person {
  String _department;

  Student(String name, int id, String department)
      : _department = department,
        super(name, id);

  String get department {
    return _department;
  }

  @override
  void displayInfo() {
    print("\n--- Student Information ---");
    print("Name: $name");
    print("ID: $id");
    print("Department: $department");
  }
}

class Course {
  String courseName;
  String courseCode;

  Course(this.courseName, this.courseCode);

  void displayCourse() {
    print("Course Name: $courseName");
    print("Course Code: $courseCode");
  }
}

class Enrollment {
  Student student;
  Course course;
  double marks;

  Enrollment(this.student, this.course, this.marks);

  String getGrade() {
    if (marks >= 80) {
      return "A+";
    } else if (marks >= 70) {
      return "A";
    } else if (marks >= 60) {
      return "B";
    } else if (marks >= 50) {
      return "C";
    } else if (marks >= 40) {
      return "D";
    } else {
      return "F";
    }
  }

  void displayEnrollment() {
    print("\n--- Enrollment Information ---");
    print("Student: ${student.name}");
    print("Student ID: ${student.id}");
    print("Course: ${course.courseName}");
    print("Course Code: ${course.courseCode}");
    print("Marks: $marks");
    print("Grade: ${getGrade()}");
  }
}

void main() {
  print("Enter student name:");
  String name = stdin.readLineSync()!;

  print("Enter student ID:");
  int id = int.parse(stdin.readLineSync()!);

  print("Enter department:");
  String department = stdin.readLineSync()!;

  print("\nEnter course name:");
  String courseName = stdin.readLineSync()!;

  print("Enter course code:");
  String courseCode = stdin.readLineSync()!;

  print("Enter marks:");
  double marks = double.parse(stdin.readLineSync()!);

  Student student = Student(name, id, department);
  Course course = Course(courseName, courseCode);
  Enrollment enrollment = Enrollment(student, course, marks);

  student.displayInfo();

  print("\n--- Course Information ---");
  course.displayCourse();

  enrollment.displayEnrollment();

  // Polymorphism
  Person person = student;

  print("\n--- Polymorphism Example ---");
  person.displayInfo();
}