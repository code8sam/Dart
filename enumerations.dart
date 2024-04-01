enum Medal {
  gold,
  silver,
  bronze,
  noMedal,
}
void main() {
  // enumerations and switch case---
  // var pos = 6;
  Medal medal = Medal.gold;
  // var medal = Medal.gold; (type inference on enumeration works) . . .

  // medal.name;
  // Medal.values;
  // Medal.values.byName('silver');

  switch (medal) {
    case Medal.gold:
      print('gold');
      break;
    case Medal.silver:
      print('silver');
      break;
    case Medal.bronze:
      print('bronze');
      break;
    case Medal.noMedal:
      print('no medal');
      break;
    default:
      print('Better Luck Next Time');
      break;
  }
}

// output: gold

