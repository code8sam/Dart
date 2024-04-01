const global = 15;
void main() {
  const a = 10;
  print(a); // output : 10
  print(global); // output : 15
  if (a > 5) {
    const a = 2;
    print(a); // output : 2
  }
}
