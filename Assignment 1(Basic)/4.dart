//Find Simple Interest
import 'dart:io';

void main() {
  print("Enter Principal:");
  double p = double.parse(stdin.readLineSync()!);

  print("Enter Time:");
  double t = double.parse(stdin.readLineSync()!);

  print("Enter Rate:");
  double r = double.parse(stdin.readLineSync()!);

  double si = (p * t * r) / 100;

  print("Simple Interest = $si");
}