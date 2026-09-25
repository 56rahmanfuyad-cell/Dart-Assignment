//Create a Shape superclass and derive Rectangle and Circle, each with their own area() method.
import 'dart:io';

class Shape {
  double area() {
    return 0;
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.1416 * radius * radius;
  }
}

void main() {
  print("Enter rectangle length:");
  double length = double.parse(stdin.readLineSync()!);

  print("Enter rectangle width:");
  double width = double.parse(stdin.readLineSync()!);

  print("Enter circle radius:");
  double radius = double.parse(stdin.readLineSync()!);

  Rectangle rectangle = Rectangle(length, width);
  Circle circle = Circle(radius);

  print("\nRectangle Area: ${rectangle.area()}");
  print("Circle Area: ${circle.area()}");
}