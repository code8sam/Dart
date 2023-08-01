extension NumberParsing on String {
  int? toIntOrNull() => int.tryParse(this);
}

void main() {
  // int.tryParse('123');
  '123'.toIntOrNull();
}
