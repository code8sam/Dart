// define a function type, and we can tell that this is different from a regular
// function, because it doesn't have a function body. And now that we have this,
// we can update our welcome function and change the type of that argument to
// `Greet’

// typedef is also known as an `alias`.

// Well, if you need to use a certain function type more than once, you can
// write a typedef like this and then use it as a function type inside the
// argument list. This way you can give a meaningful name to the function type,
// like we have done here. But if you need a new function type just one, then
// you don't need to name it

typedef Greet = String Function(String);

// shorter version :
// typedef String Greet(String name);

void main() {
  final sayHi = (String name) => 'Hi, $name';
  welcome(sayHi, 'Satyam');
}

// greet is an argument that needs to be a function and takes String argument
// and return String
// void welcome(String Function(String) greet, String name) {

void welcome(Greet greet, String name) {
  print(greet(name));
  print('Welcome to this course');
}
