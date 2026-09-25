//Simple To-Do Application (Add, Remove, View Tasks)
import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("\n--- TO-DO APP ---");
    print("1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");

    print("Enter your choice:");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("Enter task:");
      String task = stdin.readLineSync()!;
      tasks.add(task);
      print("Task Added.");
    } else if (choice == 2) {
      print("Enter task to remove:");
      String task = stdin.readLineSync()!;

      if (tasks.remove(task)) {
        print("Task Removed.");
      } else {
        print("Task Not Found.");
      }
    } else if (choice == 3) {
      print("Your Tasks:");

      if (tasks.isEmpty) {
        print("No tasks available.");
      } else {
        for (int i = 0; i < tasks.length; i++) {
          print("${i + 1}. ${tasks[i]}");
        }
      }
    } else if (choice == 4) {
      print("Exiting...");
      break;
    } else {
      print("Invalid Choice.");
    }
  }
}