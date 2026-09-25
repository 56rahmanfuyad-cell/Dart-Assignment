//Add your name to hello.txt
import 'dart:io';

void main() {
  File file = File("hello.txt");

  file.writeAsStringSync("Habibur Rahman Fuyad");

  print("Name written to hello.txt");
}