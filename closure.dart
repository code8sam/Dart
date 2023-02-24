void main() {
  const multiplier = 10;
  const list = [1, 2, 3];
  final result = list.map((x) {
    // And when we declare an anonymous function that uses some variables
    // that are defined outside its own scope, then that function is
    // called a closure.
    return x * multiplier;
  });
  print(result);
}
