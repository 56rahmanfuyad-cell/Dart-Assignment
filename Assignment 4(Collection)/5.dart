//Add 7 friend names to a list and use where() to find names starting with A
void main() {
  List<String> friends = [
    "Alice",
    "Alex",
    "Bob",
    "Charlie",
    "Ariana",
    "David",
    "Emma"
  ];

  var result = friends.where((name) => name.startsWith("A"));

  print("Names starting with A:");
  for (var name in result) {
    print(name);
  }
}