class PositiveInt {
  const PositiveInt(this.value)
      : assert(value >= 0, 'Value cannot be negative');
  final int value;
}

void signIn(String signIn, String password) {
  assert(signIn.isNotEmpty);
  assert(password.isNotEmpty);
}

void main() {
  // final invalidAge = PositiveInt(-1);
  // const invalidAge = PositiveInt(1);
  // print(invalidAge);

  // signIn('', '');
}
