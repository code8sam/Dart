void main() {
  // fat arrow here ...

  print(sum(15, 45));
}

// int sum(int x, int y) {
//   return x + y;
// }

// OR since the content inside the method is single line, so use
// fat arrow operator

int sum(int x, int y) => x + y;
