//Create a method named toCapitalized() that capitalizes the first letter.
import 'dart:io';

String toCapitalized(String text) {
  if (text.isEmpty) {
    return text;
  }

  return text[0].toUpperCase() + text.substring(1);
}

void main() {
  print("Enter a word:");
  String text = stdin.readLineSync()!;

  print("Capitalized: ${toCapitalized(text)}");
}