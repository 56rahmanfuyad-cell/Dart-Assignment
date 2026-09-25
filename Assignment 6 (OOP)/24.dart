//Create a generic class Box<T> that can store any data type.
import 'dart:io';

class Box<T> {
  T value;

  Box(this.value);

  void display() {
    print("Box contains: $value");
  }
}

void main() {
  print("Enter a value:");
  String value = stdin.readLineSync()!;

  Box<String> box = Box<String>(value);

  box.display();
}