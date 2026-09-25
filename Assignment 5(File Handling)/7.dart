//Store student information in a CSV file and read it
import 'dart:io';

void main() {
  File file = File("students.csv");

  file.writeAsStringSync(
      "Name,Age,Address\n"
      "Habib,23,Sylhet\n"
      "John,20,Dhaka\n"
      "Alice,22,Chittagong");

  print("Data written to CSV file.");

  print("\nReading CSV File:");

  String data = file.readAsStringSync();
  print(data);
}