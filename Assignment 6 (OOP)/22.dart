//Create a mixin named LoggerMixin that provides a logMessage() method. Use this mixin in both User and Product classes, and demonstrate the shared logging functionality in the main) function.
import 'dart:io';

mixin LoggerMixin {
  void logMessage(String message) {
    print("LOG: $message");
  }
}

class User with LoggerMixin {
  String name;

  User(this.name);

  void showUser() {
    print("User: $name");
    logMessage("User information displayed.");
  }
}

class Product with LoggerMixin {
  String name;

  Product(this.name);

  void showProduct() {
    print("Product: $name");
    logMessage("Product information displayed.");
  }
}

void main() {
  print("Enter user name:");
  String userName = stdin.readLineSync()!;

  print("Enter product name:");
  String productName = stdin.readLineSync()!;

  User user = User(userName);
  Product product = Product(productName);

  user.showUser();
  product.showProduct();
}