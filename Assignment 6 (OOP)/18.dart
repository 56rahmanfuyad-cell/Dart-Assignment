//Implement multiple interfaces: Flyable and Swimmable in a Duck class.
import 'dart:io';

class Flyable {
  void fly() {
    print("Flying...");
  }
}

class Swimmable {
  void swim() {
    print("Swimming...");
  }
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() {
    print("Duck is flying.");
  }

  @override
  void swim() {
    print("Duck is swimming.");
  }
}

void main() {
  Duck duck = Duck();

  print("Enter 1 to make the duck fly:");
  print("Enter 2 to make the duck swim:");

  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    duck.fly();
  } else if (choice == 2) {
    duck.swim();
  } else {
    print("Invalid choice.");
  }
}