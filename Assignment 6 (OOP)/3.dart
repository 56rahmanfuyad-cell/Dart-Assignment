//Book Class
import 'dart:io';

class Book {
  String title;
  String subtitle;
  String author;

  Book(this.title, this.subtitle, this.author);

  void displayInfo() {
    print("\nBook Information:");
    print("Title: $title");
    print("Subtitle: $subtitle");
    print("Author: $author");
  }
}

void main() {
  print("Enter book title:");
  String title = stdin.readLineSync()!;

  print("Enter book subtitle:");
  String subtitle = stdin.readLineSync()!;

  print("Enter author name:");
  String author = stdin.readLineSync()!;

  Book book = Book(title, subtitle, author);

  book.displayInfo();
}