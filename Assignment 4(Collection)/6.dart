//Create a map with name, address, age, country, update country, and print all keys and values
void main() {
  Map<String, dynamic> person = {
    "name": "Habib",
    "address": "Sylhet",
    "age": 23,
    "country": "Bangladesh"
  };

  // Update country
  person["country"] = "Canada";

  person.forEach((key, value) {
    print("$key : $value");
  });
}