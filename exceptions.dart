class Fraction {
  Fraction(this.numerator, this.denominator) {
    if (denominator == 0) {
      throw IntegerDivisionByZeroException();
    }
  }
  final int numerator;
  final int denominator;

  double get value => numerator / denominator;
}

void main() {
  try {
    final f = Fraction(3, 5);
    print(f.value); // output: 0.6
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
    rethrow;
  } on Exception catch (e) {
    print(e);
  } finally {
    print('done');
  }
}
