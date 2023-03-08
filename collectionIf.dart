void main() {
  // collection if

  const addBlue = false;
  const addRed = true;

  final colors = [
    'grey',
    'brown',
    // ignore: dead_code
    if (addBlue) 'blue',
    if (addRed) 'red',
  ];

  print(colors); // output : [grey, brown, red]
}
