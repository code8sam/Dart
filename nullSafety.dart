void main() {
  // Dart without null safety :

  // void main() {
  //   // by default a will be set to null if we write like this :
  //   int a = null;
  //   //or
  //   int a;
  //   int b = 2;
  //   print(a + b); // this will throw runtime error
  // }

  // Dart with null safety :

  // error : A value of type 'null' can't be assigned to a variable
  // of type int because if null safety is enabled, then this variable
  // can't be null

  // int x = null;

  // However, if we really want to be able to assign 'null' to this variable,
  // then we have to declare it as nullable. And we can do this by adding a
  // question mark after the name of the type, like this

  // int? x = null;

  // And now that we have done this, we can remove the initializer, and this
  // variable will be set to 'null' by default, without any compiler errors

  int? a;
  int b = 2;
  // below line generates an error that says An expression whose value
  // can be 'null' must be null-checked before it can be dereferenced

  // print(a + b); // compile time error

  // But, let's suppose that we really want this variable to be nullable,
  // and only print the result of a + b if A is not null

  // FLOW ANALYSIS:
  // PROMOTION: nullable variables promoted to non-nullable.
  // AND
  // DEFINITE ASSIGNMENT: Dart knows for sure when a variable is assigned.
  // Declare nullable variables and assign later.

  // So being able to declare a non-nullable variable and
  // initialize it later is very valuable.
  // And Dart makes this possible because
  // it supports definite assignment.

  // And to make this possible, Dart is using a special feature called
  // Flow Analysis. And thanks to flow analysis, this variable that
  // is nullable is promoted to a non-nullable variable inside
  // the else branch.
  if (a == null) {
    print('a is null');
  } else {
    print(a + b);
  }

  // Assertion Operator : used to assign a nullable value to
  // a non-nullable variable
  int x = 42;
  int? maybeValue;
  if (x > 0) {
    maybeValue = x;
  }
  // However, if we are sure that this variable is going to have
  // a non-null value even though it's nullable, then
  // we can say, hey Dart, I know what I'm doing, and I want to assign
  // this to a non nullable variable. And we can do this with the
  // assertion operator : ! --->
  int value = maybeValue!;
  // But if you are not sure and the value for example of x is -1.
  // Then when we print the value of 'value', we will face a runtime error
  // So,  if you're sure that a nullable variable will be non-null when you
  // run your program, then it's safe to assign it to a non-nullable variable
  // with the assertion operator

  // but

  // if you're wrong, then this will generate a runtime error. And for
  // this reason, the assertion operator is also known as the BANG operator
  print(value);

  // if null operator : used to handle null values gracefully
  // than assertion operator

  int x2 = 42;
  int? maybeValue2;
  if (x2 > 0) {
    maybeValue2 = a;
  }
  // if null operator : ?? --->
  int value2 = maybeValue2 ?? 0;
  print(value2);

  // augmented assignment if-null operator :
  int x3 = 42;
  int? maybeValue3;
  if (x3 > 0) {
    maybeValue3 = a;
  }
  // augmented assignment if null :

  //what this does is to assign the value 0 to maybeValue3, but only if
  // it is currently null
  maybeValue3 ??= 0;
  // ...
  int value3 = maybeValue3;
  print(value3);

  // conditional access operator example :

  const cities = <String?>['London', 'Paris', null];
  for (var city in cities) {
    // conditional access operator :
    print(city?.toUpperCase());
  }
}
