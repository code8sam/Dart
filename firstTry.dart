void main() {
  // All Dart programs need to have a 'main' method : entry point of program

  // Dart is the language behind Flutter
  // extension for dart is : .dart
  // dart supports both JIT (Just In Time) comiplation and AOT (Ahead Of Time) compilation
  // for web -> dart code -> compiled to -> JavaScript Code
  // Object Oriented and Statically Typed
  // Case Sensitive Language

  String name = 'Satyam Kumar';
  // declare a variable : defining a variable and giving it a name so that it can be used later
  // Camel Case for variable names :
  int age;
  // initialize a variable : assigning an initial value to that variable
  age = 23;
  String dob = '26/04/1998';
  double height = 5.9;

  // print statement : print a string representation of the Object to the console
  print(
      'My name is $name and age is $age as I\'m born on $dob. My height is $height ft.');

  // escape sequence
  print('\$');

  // raw string example below -> (r'~~~~~~~') ->
  print(r'C:\Windows\system32');

  //Trick for New Line

  /*
  If we want new sentences in a new line, then we can either use println or \n but this becomes a difficult task when there are many sentences. So, in such case, we can use triple quotes method to make things easy  “””     “””
  */

  String newLinesExample = """
                          First Sentence
                          Second Sentence
                          Third Sentence
                           """;
  print(newLinesExample);
}
