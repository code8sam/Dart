var counter = 1;

void foo() {
  print('*' * counter);
}

void main() {
  foo();
  counter++;
  foo();
  counter++;
  foo();
}
