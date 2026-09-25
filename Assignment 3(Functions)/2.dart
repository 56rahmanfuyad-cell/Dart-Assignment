//Print even numbers between intervals using a function
import 'dart:io';

void printEven(int start, int end) {
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

void main() {
  print("Enter starting number:");
  int start = int.parse(stdin.readLineSync()!);

  print("Enter ending number:");
  int end = int.parse(stdin.readLineSync()!);

  printEven(start, end);
}