void main() {
  // list

  // List<int> num1 = [1,2,4,5,8]; // Growable list
  // List<int> num2 = new List (5); // Fixed length list

  var cities = ['London', 'Paris', 'Moscow'];
  print(cities);
  // insert/replace the value at a specific index in a list
  cities.insert(1, 'Tokyo');
  cities.add('Paris');
  print(cities);
  //print value at a specific index in a list
  print(cities[1]);
  // for-in loop
  for (var city in cities) {
    print(city);
  }
  // for loop
  for (var i = 0; i < cities.length; i++) {
    print(cities[i]);
  }
  // Example 2nd
  var numbers = [1, 3, 5, 7, 9];
  var sum = 0;
  for (var number in numbers) {
    sum += number;
  }
  print(sum);

  // will give error at runtime as const variables and its content
  // can't be modified
  // const cities2 = <String>['London', 'Tokyo', 'Miami'];
  // cities2[1] = 'Venice';
  // print(cities2);

  // Type Annotation for List
  // ensures only String type value will be taken in the list :
  List<String> drink = ['beer', 'softdrink' 'water'];
  print('$drink');
}

/*

output:

[London, Paris, Moscow]
[London, Tokyo, Paris, Moscow, Paris]
Tokyo
London
Tokyo
Paris
Moscow
Paris
London
Tokyo
Paris
Moscow
Paris
25
[beer, softdrinkwater]

*/
