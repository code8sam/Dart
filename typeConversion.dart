void main() {
  int age = 23;

  // String ageString = age; || not allowed ||
  // Dart is Strongly typed Lang.
  String ageString = age.toString();
  print('$ageString'); //  output: 23

  String rating = '4.5';
  double ratingInt = double.parse(rating);
  print('$ratingInt'); // output: 4.5

  // assigning integer literals to double is possible because Integer literals
  // can be promoted to double
  // but ---
  double intTODouble = 6;
  print(intTODouble); // output: 6.0
  // assigning integer variable to double is not possible as above ---
  // integer variables must be explicitly converted to double using
  // method toDouble() ---
  int x = 10;
  double y = x.toDouble();
  print(y); // output: 10.0

  // from double to int ->
  // you can't declare a variable of type int and assign it with a literal
  // of type double. And instead, you should choose to use either floor, round,
  // ceil, or truncate depending on what specific conversion you need :
  double a = 7.89;
  int b = a.round();
  print(b); // output : 8
}
