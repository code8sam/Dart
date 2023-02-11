void main() {
  final person = describe(name: 'Satyam', age: 36);
  print(person);
}

// positional arguments ...
// each argument is identified by its position in the arguments list.

// void describe(String name, int age) {
//   print('My name is $name. I am $age years old.');
// }

// named arguments ...
// named arguments by default, they are not-required.
// And this means is that when we call this 'describe' method,
// we can choose to omit the name or age arguments.

// omitting a named argument is equal to setting it to NULL

// using ? --> value can be nullable
// String describe({String? name, int? age}) {

// OR using required
// String describe({required String name, required int age}) {

// OR using default
// these arguments will be set to these default values
// if we omit them in the function call.

String describe({String name = "abc", int age = 55}) {
  return "My name is $name. I am $age years old.";
}
