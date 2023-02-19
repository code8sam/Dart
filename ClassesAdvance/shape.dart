import 'dart:math';

abstract class Shape {
  double get area;
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  //final shape = Shape();
  // final square = Sqaure(10);
  final Shape square = Square(10);

  //print(sqaure.area);
  printArea(square);

  final circle = Circle(3);
  printArea(circle);

  final shapes = [
    Square(10),
    Circle(3),
  ];

  // shapes.forEach((shape) => printArea(shape));
  // OR
  shapes.forEach(printArea);
}
