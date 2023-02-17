void main() {
/*
Given the following map of pizza prices:

Write a program to calculate the total for a given order.

For example, given the following order: The program should print

`Total: $13`.

Note: if a pizza is not on the menu, the program should print something like this:

> pineapple pizza is not on the menu
*/

  // List of menu and price of pizzas ...
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // the things that are ordered ...
  const order = ['margherita', 'pepperoni', 'pineapple'];

  // taking a variable for total price of the order ...
  var total = 0.0;

  // iterating through order to have the price from the map and added to total ...
  for (var item in order) {
    final price = pizzaPrices[item];

    if (price != null) {
      total += price;
    } else {
      print('$item pizza is not on the menu');
    }
  }
  print('Total: \$$total');
}
/*

output:

pineapple pizza is not on the menu
Total: $13.0
Exited

*/
