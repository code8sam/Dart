import 'package:equatable/equatable.dart';

class Point extends Equatable {
  Point(this.x, this.y);
  final int x;
  final int y;

  @override
  //List<Object?> get props => throw UnimplementedError();
  List<Object?> get props => [x, y];

  @override
  bool? get stringify => true;
}

void main() {
  print(5 == 5); // true
  print(Point(0, 0) == Point(0, 0));
}
