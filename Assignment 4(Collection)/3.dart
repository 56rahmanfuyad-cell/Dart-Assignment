//Read a list of expense amounts using user input and print the total
import 'dart:io';

void main() {
  List<double> expenses = [];

  print("How many expenses?");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    print("Enter expense $i:");
    double amount = double.parse(stdin.readLineSync()!);
    expenses.add(amount);
  }

  double total = 0;

  for (double expense in expenses) {
    total += expense;
  }

  print("Total Expenses = $total");
}