//Temperature — Private Variable, Setter & Getter
import 'dart:io';

class Temperature {
  double _temp = 0;

  // Setter
  set temp(double celsius) {
    _temp = celsius;
  }

  // Getter
  double get temp {
    return (_temp * 9 / 5) + 32;
  }
}

void main() {
  Temperature temperature = Temperature();

  print("Enter temperature in Celsius:");
  double celsius = double.parse(stdin.readLineSync()!);

  temperature.temp = celsius;

  print("Temperature in Fahrenheit: ${temperature.temp}");
}