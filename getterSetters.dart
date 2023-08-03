class Temperature {
  Temperature.celsius(this.celsius);
  Temperature.farenheit(double farenheit) : celsius = (farenheit - 32) / 1.8;

  double celsius;

  //getter
  double get Farenheit => celsius * 1.8 + 32;
  //setter
  set Farenheit(double farenheit) => celsius = (farenheit - 32) / 1.8;
}

void main() {
  final temp1 = Temperature.celsius(30);
  final temp2 = Temperature.farenheit(90);

  print(temp1.celsius);
  temp1.celsius = 32;
  print(temp1.Farenheit);
  temp1.Farenheit = 90; // setter is called
  final temp = 30;

  print(temp1);
  print(temp2);

  // use methods instead of getters for expensive operations
}
