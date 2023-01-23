void main() {
  // maps here ...

  // name : Andrea
  // age : 36
  // height : 1.84

  // when declaring a map with var/final/const, keys and values can have
  // any type we want
  var person = {'name': 'Satyam', 'age': 24, 'height': 1.84};
  // OR another way to explicitly tell Dart what types we want for
  // keys and values
  Map<String, dynamic> person2 = {'name': 'Tom', 'age': 36, 'height': 1.55};
  print('$person2');
  // OR another way to explicitly tell Dart what types we want for keys
  // and values and still keep var/const/final by using type annotations
  var person3 = <String, dynamic>{'name': 'Jerry', 'age': 20, 'height': 1};
  print('$person3');

  // To access the values inside this map, we can use square brackets.
  var name = person['name'];
  print(name);

  // set new values in maps
  person['age'] = 37;
  print(person);

  // set new keys

  person['like Pizzas'] = true;
  print(person);

  // iterating through a Map
  // for (var item in person) {
  // }

  for (var key in person.keys) {
    //print keys of map
    print(key);
    // print values of keys of map
    print(person[key]);

    // or different way to print values in map without key

    for (var value in person.values) {
      print(value);
    }

    // or a way to get both key and value is by ---

    for (var entry in person.entries) {
      print('${entry.key} : ${entry.value}');
    }
  }
}
