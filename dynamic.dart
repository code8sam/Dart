void main() {
  // if we use dynamic to declare a variable then
  // we can change the type of it ahead which was not allowed
  //if we would have used var keyword
  dynamic y = 10;
  y = true;
  print(y); // output : true
}
