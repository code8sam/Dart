void main() {
  const list = [1, 2, 3, 4];
  final result = firstWhere(list, (x) => x == 5, orElse: () => -1);
  print(result);
}

Object? firstWhere<T>(List<T> items, bool Function(T) f,
    {required T Function() orElse}) {
  for (var item in items) {
    if (f(item)) {
      return item;
    }
  }
  return orElse;
}
