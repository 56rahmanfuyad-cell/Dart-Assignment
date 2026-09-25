//Create an abstract class Appliance with methods turnOn() and turnOff(). Implement them in Fan.
import 'dart:io';

abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOn() {
    print("Fan is turned ON.");
  }

  @override
  void turnOff() {
    print("Fan is turned OFF.");
  }
}

void main() {
  Fan fan = Fan();

  print("Enter 1 to turn ON the fan:");
  print("Enter 2 to turn OFF the fan:");

  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    fan.turnOn();
  } else if (choice == 2) {
    fan.turnOff();
  } else {
    print("Invalid choice.");
  }
}