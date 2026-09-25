//Mini Library Management System
import 'dart:io';

class Book {
  String title;
  String author;
  bool isIssued;

  Book(this.title, this.author) : isIssued = false;

  void displayBook() {
    print("Title: $title");
    print("Author: $author");
    print("Issued: $isIssued");
  }
}

class Member {
  String name;
  int id;

  Member(this.name, this.id);

  void displayMember() {
    print("Member Name: $name");
    print("Member ID: $id");
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void issueBook(String title) {
    for (int i = 0; i < books.length; i++) {
      if (books[i].title == title) {
        if (books[i].isIssued == false) {
          books[i].isIssued = true;
          print("Book issued successfully.");
        } else {
          print("Book is already issued.");
        }
        return;
      }
    }

    print("Book not found.");
  }

  void returnBook(String title) {
    for (int i = 0; i < books.length; i++) {
      if (books[i].title == title) {
        if (books[i].isIssued == true) {
          books[i].isIssued = false;
          print("Book returned successfully.");
        } else {
          print("This book was not issued.");
        }
        return;
      }
    }

    print("Book not found.");
  }

  void displayBooks() {
    print("\n--- Library Books ---");

    for (int i = 0; i < books.length; i++) {
      print("\nBook ${i + 1}");
      books[i].displayBook();
    }
  }
}

void main() {
  Library library = Library();

  print("Enter first book title:");
  String title1 = stdin.readLineSync()!;

  print("Enter first book author:");
  String author1 = stdin.readLineSync()!;

  print("\nEnter second book title:");
  String title2 = stdin.readLineSync()!;

  print("Enter second book author:");
  String author2 = stdin.readLineSync()!;

  Book book1 = Book(title1, author1);
  Book book2 = Book(title2, author2);

  library.addBook(book1);
  library.addBook(book2);

  print("\nEnter member name:");
  String memberName = stdin.readLineSync()!;

  print("Enter member ID:");
  int memberId = int.parse(stdin.readLineSync()!);

  Member member = Member(memberName, memberId);

  print("\n--- Member Information ---");
  member.displayMember();

  library.displayBooks();

  print("\nEnter the title of the book to issue:");
  String issueTitle = stdin.readLineSync()!;

  library.issueBook(issueTitle);

  library.displayBooks();

  print("\nEnter the title of the book to return:");
  String returnTitle = stdin.readLineSync()!;

  library.returnBook(returnTitle);

  library.displayBooks();
}