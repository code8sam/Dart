void main() {
  // reduce method

  // useful when you want to combine all the items inside a list
  // based on some criteria and produce a single value as a result

  // Example - sum of all the items inside a list, without using a for loop

  const list = [1, 2, 3, 4];
  // takes a function that has two input values, and one output value

  // Now, the way reduce works, is that it takes the first item
  // inside the list and assigns it to a variable and then it
  // combines this with all the remaining items in the list using
  // the combine function provided

  final sum = list.reduce((value, element) => value + element);
  // value : 1 3 6 10
  // element : 2 3 4
  print(sum); // output : 10
}
