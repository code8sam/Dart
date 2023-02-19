class Point {
  Point(this.x, this.y);
  final int x;
  final int y;

  @override
  String toString() {
    return "[$x, $y]";
  }
  // An operator overload allows us to define how an operator works when
  // it is applied to a new type

  //However, here we're not allowed to use 'Point' as the type of the argument
  // because the equality operator inside the 'Object' class has an argument
  // of type 'Object', and when we override a method or an operator, all the
  // arguments must match

  // bool operator ==(Object other) {
  bool operator ==(covariant Point other) {
    // we need to check that at runtime, this object is actually of type 'Point'

    // The is operator checks for the runtime type of a variable
    if (other is Point) {
      return x == other.x && y == other.y;
    }
    return false;
  }
}

void main() {
  print(5 == 5); // true
  print(Point(0, 0) == Point(0, 0));
  // false when we don't have == operator overload and
  // true if we have written in class the == operator overload

  //BUT
  // Now if we do this :

  //print(Point(0, 0) == "abc");

  // It is allowed and will give false but it doesnot at all makes sense as
  // why we even have to compare here with String. Thus, to avoid this

  // we have a special keyword COVARIANT.

  // So when you declare the argument type in object overload just change it by
  // Object ---> covariant Point

  // and once we do that we will no longer be able to compare Point(0, 0) with
  // a String Object as it will throw an error --->
  // The argument String can't be assigned to the parameter type Point.

  // So by using `covariant`, we are allowed to change the type of an argument
  // when we override a method from a super class
}
