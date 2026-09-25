//Create a map with name and phone, then find all keys having length 4
void main() {
  Map<String, String> contacts = {
    "name": "Habib",
    "phone": "01712345678"
  };

  var result = contacts.keys.where((key) => key.length == 4);

  print("Keys with length 4:");
  for (var key in result) {
    print(key);
  }
}