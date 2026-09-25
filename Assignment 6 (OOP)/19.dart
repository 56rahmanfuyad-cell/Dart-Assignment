//Create an abstract Payment class and implement CashPayment and CardPayment.
import 'dart:io';

abstract class Payment {
  void makePayment(double amount);
}

class CashPayment extends Payment {
  @override
  void makePayment(double amount) {
    print("Cash payment of $amount completed.");
  }
}

class CardPayment extends Payment {
  @override
  void makePayment(double amount) {
    print("Card payment of $amount completed.");
  }
}

void main() {
  print("Enter payment amount:");
  double amount = double.parse(stdin.readLineSync()!);

  print("Enter 1 for Cash Payment:");
  print("Enter 2 for Card Payment:");

  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    CashPayment cash = CashPayment();
    cash.makePayment(amount);
  } else if (choice == 2) {
    CardPayment card = CardPayment();
    card.makePayment(amount);
  } else {
    print("Invalid choice.");
  }
}