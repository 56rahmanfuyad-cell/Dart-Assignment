//Calculate time taken to reach office
void main() {
  double distance = 25;
  double speed = 40;

  double timeHours = distance / speed;
  double timeMinutes = timeHours * 60;

  print("Time taken = $timeMinutes minutes");
}