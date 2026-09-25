//Create an interface-like class Playable and implement it in Football and Cricket.
import 'dart:io';

class Playable {
  void play() {
    print("Playing...");
  }
}

class Football implements Playable {
  @override
  void play() {
    print("Playing Football.");
  }
}

class Cricket implements Playable {
  @override
  void play() {
    print("Playing Cricket.");
  }
}

void main() {
  print("Enter 1 for Football:");
  print("Enter 2 for Cricket:");

  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    Football football = Football();
    football.play();
  } else if (choice == 2) {
    Cricket cricket = Cricket();
    cricket.play();
  } else {
    print("Invalid choice.");
  }
}