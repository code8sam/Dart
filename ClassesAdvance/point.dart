// void main() {
//   const list = [1, 2, 3];
//   print(list);
// }

class Point {
  Point(this.x, this.y);
  final int x;
  final int y;

  @override
  String toString() {
    return "[$x, $y]";
  }
}

void main() {
  print(Point(2, 3));
}
