class Strings {
  // these two strings that I've declared here look a lot like
  // compile time constants. Because it's unlikely that we would want
  // these to change while the program is running. For this reason, we can
  // declare them as 'static const'

  // if you declare a class variable as 'static const', what you're doing is
  // to define a global constant that belongs to that class. This can be
  // better than having constant variables in the global scope

  static const String welcome = "Welcome";

  // also, since we have type inference, here we can drop the 'String' type
  // because Dart will automatically infer this from the initializer.

  // static const String signIn = "Sign In";

  static const signIn = "Sign In";

  // we can create static methods as well
  static String greet(String name) {
    return "Hi $name";
  }
}

void main() {
  // 'static' class variables are variables that belong to the class itself
  // and not to any specific instance of that class
  print(Strings.welcome); // output : Welcome
  print(Strings.signIn); // output : Sign In
  print(Strings.greet("Satyam")); // output : Hi Satyam
}
