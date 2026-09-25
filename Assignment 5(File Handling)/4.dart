//Copy hello.txt to hello_copy.txt
import 'dart:io';

void main() {
  File source = File("hello.txt");

  source.copySync("hello_copy.txt");

  print("File copied successfully.");
}