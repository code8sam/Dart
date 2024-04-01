void main() {
  const list = [1, 2, 3];

  const listDecimal = [1.1, 2.2, 3.3];

  // final doubles = doubleItems(list);
  // print(doubles); // output : [2, 4, 6]

  final doubles = transform<int, int>(list, (x) => x * 2);
  print(doubles); // output : [2, 4, 6]
  final squares = transform<double, double>(listDecimal, (x) => x * x);
  print(squares);
  // output: [1.2100000000000002, 4.840000000000001, 10.889999999999999]

  final round = transform<double, int>(listDecimal, (x) => x.round());
  print(round); // output: [1, 2, 3]
}

/*
List<int> doubleItems(List<int> items) {
  var result = <int>[];
  for (var x in items) {
    result.add(x * 2);
  }
  return result;
}
*/

/*
List<int> transform(List<int> items, int Function(int) f) {
  var result = <int>[];
  for (var x in items) {
    result.add(f(x));
  }
  return result;
}
*/

List<R> transform<T, R>(List<T> items, R Function(T) f) {
  var result = <R>[];
  for (var x in items) {
    result.add(f(x));
  }
  return result;
}
