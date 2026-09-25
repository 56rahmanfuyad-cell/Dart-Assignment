//Create an enum OrderStatus with values pending, shipped, and delivered. Display
import 'dart:io';

enum OrderStatus {
  pending,
  shipped,
  delivered
}

void main() {
  print("Enter order status:");
  print("1. Pending");
  print("2. Shipped");
  print("3. Delivered");

  int choice = int.parse(stdin.readLineSync()!);

  OrderStatus status;

  if (choice == 1) {
    status = OrderStatus.pending;
  } else if (choice == 2) {
    status = OrderStatus.shipped;
  } else if (choice == 3) {
    status = OrderStatus.delivered;
  } else {
    print("Invalid choice.");
    return;
  }

  switch (status) {
    case OrderStatus.pending:
      print("Your order is pending.");
      break;

    case OrderStatus.shipped:
      print("Your order has been shipped.");
      break;

    case OrderStatus.delivered:
      print("Your order has been delivered.");
      break;
  }
}