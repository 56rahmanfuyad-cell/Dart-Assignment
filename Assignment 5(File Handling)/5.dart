//Create 100 files using a loop
import 'dart:io';

void main() {
  for (int i = 1; i <= 100; i++) {
    File("file$i.txt").createSync();
  }

  print("100 files created.");
}