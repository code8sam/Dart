void main() {
  // collection for

  const addBlue = false;
  const addRed = true;

  const extraColors = ['black', 'pink', 'yellow'];

  final colors = [
    'grey',
    'brown',
    // ignore: dead_code
    if (addBlue) 'blue',
    if (addRed) 'red',

    // collection for in
    for (var color in extraColors) 
    color,
  ];

  print(colors); // output : [grey, brown, red, black, pink, yellow]
}
