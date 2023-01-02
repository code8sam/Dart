void main() {
  // as operator

  var person = {'name': 'Andrea', 'age': 36, 'height': 1.84};

  //var name = person['name'];

  // use as operator now ...

  var name1 = person['name'] as String;

  // null values
  // check for a key that doesn't exist and observe the behaviour

  var weight = person['weight'];

  print(weight); // output is null

  // put an if condition to not let null pass through
  if (weight == null) {
    print('no value');
  } else {
    print('$weight');
  }
}
