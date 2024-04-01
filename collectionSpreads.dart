void main() {
  // collection spreads

  const addBlue = false;
  const addRed = true;

  const extraColors = ['black', 'pink', 'yellow'];
  const addExtraColors = true;
  final colors = [
    'grey',
    'brown',
    // ignore: dead_code
    if (addBlue) 'blue',
    if (addRed) 'red',

    // collection spreads
    if (addExtraColors) ...extraColors,

    // OR --- spread operator works not just with list variables, but with literals too
    ...['black', 'pink', 'yellow']
  ];

  print(colors);
}
