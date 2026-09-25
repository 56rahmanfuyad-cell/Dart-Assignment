//BankAccount — User Input
import 'dart:io';

class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    balance = balance + amount;
    print("Deposited: $amount");
    print("Current Balance: $balance");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance = balance - amount;
      print("Withdrawn: $amount");
      print("Current Balance: $balance");
    } else {
      print("Insufficient balance.");
    }
  }
}

void main() {
  print("Enter initial balance:");
  double balance = double.parse(stdin.readLineSync()!);

  BankAccount account = BankAccount(balance);

  print("\nEnter deposit amount:");
  double depositAmount = double.parse(stdin.readLineSync()!);
  account.deposit(depositAmount);

  print("\nEnter withdrawal amount:");
  double withdrawAmount = double.parse(stdin.readLineSync()!);
  account.withdraw(withdrawAmount);
}