//Hotel Rservation System
import 'dart:io';

class Guest {
  String name;
  String phone;

  Guest(this.name, this.phone);

  void displayGuest() {
    print("Guest Name: $name");
    print("Phone: $phone");
  }
}

class Room {
  int roomNumber;
  double price;
  bool isAvailable;

  Room(this.roomNumber, this.price, this.isAvailable);

  void displayRoom() {
    print("Room Number: $roomNumber");
    print("Price per night: $price");
    print("Available: $isAvailable");
  }
}

class Reservation {
  Guest guest;
  Room room;
  int nights;

  Reservation(this.guest, this.room, this.nights);

  double calculateBill() {
    return room.price * nights;
  }

  void displayReservation() {
    print("\n--- Reservation Details ---");
    guest.displayGuest();
    room.displayRoom();
    print("Number of nights: $nights");
    print("Total Bill: ${calculateBill()}");
  }
}

void main() {
  print("Enter guest name:");
  String name = stdin.readLineSync()!;

  print("Enter guest phone:");
  String phone = stdin.readLineSync()!;

  print("Enter room number:");
  int roomNumber = int.parse(stdin.readLineSync()!);

  print("Enter room price per night:");
  double price = double.parse(stdin.readLineSync()!);

  print("Enter number of nights:");
  int nights = int.parse(stdin.readLineSync()!);

  Guest guest = Guest(name, phone);
  Room room = Room(roomNumber, price, true);

  Reservation reservation = Reservation(guest, room, nights);

  reservation.displayReservation();
}