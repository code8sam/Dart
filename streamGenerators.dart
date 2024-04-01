Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;

  await for (var value in stream) {
    sum += value;
  }

  return sum;
}

Future<int> sumStream2(Stream<int> stream) =>
    stream.reduce((previous, element) => previous + element);

Stream<int> countStream(int n) async* {
  for (var i = 1; i <= n; i++) {
    await Future.delayed(Duration(seconds: 1));
    // print(i);
    yield i;
  }
}

Iterable<int> count(int n) sync* {
  for (var i = 1; i <= n; i++) {
    yield i;
  }
}

Future<void> main() async {
  final stream2 = countStream(4);
  final sum = await sumStream2(stream2);
  print('Sum: $sum');
}
