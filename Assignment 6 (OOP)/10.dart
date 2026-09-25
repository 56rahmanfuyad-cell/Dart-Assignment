//BankAccount — Private Balance, Setter & Getter
import 'dart:io';

class BankAccount {
  double _balance = 0;

  // Setter
  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      print("Balance cannot be negative.");
    }
  }

  // Getter
  double get balance {
    return _balance;
  }
}

void main() {
  BankAccount account = BankAccount();

  print("Enter account balance:");
  double amount = double.parse(stdin.readLineSync()!);

  account.balance = amount;

  print("Current Balance: ${account.balance}");
}