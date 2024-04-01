void main() {
  // functions as first class objects aka function as arguments

  // Higher Order Function is one that either accepts another function
  // as parameter or return another function or both

  print(greet()()); // calling the inner function
  var result = greet(); // storing the result of outer function
  print(result()); // calling the inner function

  // another one ...

  final sayHi = (String name) => 'Hi, $name';
  welcome(sayHi, 'Satyam');
}

Function greet() {
  // see anonymousFunction.dart for below code
  Function sayHello = () => "Hello";
  return sayHello;
}

// greet is an argument that needs to be a function and takes String argument
// and return String
void welcome(String Function(String) greet, String name) {
  print(greet(name));
  print('Welcome to this course');
}
