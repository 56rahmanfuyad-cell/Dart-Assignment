//Create a Notification base class with displayNotification(). Then create EmailNotification and SMSNotification and override the method.
import 'dart:io';

class Notification {
  String message;

  Notification(this.message);

  String displayNotification() {
    return message;
  }
}

class EmailNotification extends Notification {
  EmailNotification(String message) : super(message);

  @override
  String displayNotification() {
    return "Email Notification: $message";
  }
}

class SMSNotification extends Notification {
  SMSNotification(String message) : super(message);

  @override
  String displayNotification() {
    return "SMS Notification: $message";
  }
}

void main() {
  print("Enter email notification:");
  String emailMessage = stdin.readLineSync()!;

  print("Enter SMS notification:");
  String smsMessage = stdin.readLineSync()!;

  EmailNotification email = EmailNotification(emailMessage);
  SMSNotification sms = SMSNotification(smsMessage);

  print(email.displayNotification());
  print(sms.displayNotification());
}