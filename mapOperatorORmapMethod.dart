void main() {
  // the map method/operator :
  // purpose of the map operator is to take a collection,
  // perform a transformation on all its items, and return a new collection
  //
  // take a list of values
  const list = [1, 2, 3];
  // map operator :
  final multiplyBy2 = list.map((e) => e * 2);
  print(multiplyBy2); // output: (2, 4, 6)

  //
  // Iterable : An iterable is a collections of elements that can be accessed
  // sequentially
  // So when we use a method such as map that returns an iterable, we can
  // assign the result to a variable. And we can iterate on that variable
  // using a for loop. And I should point out that when we print an iterable,
  // then all the items appear inside parenthesis rather than square brackets.

  // @returns a new lazy [Iterable] and what we mean by lazy is that
  // this anonymous function is not evaluated until we use the resulting iterable

  // This is a performance optimization to ensure that all the resulting items
  // are only calculated when they are needed

  // ***
  // the return type of map is an Iterable, and not a List
  // ***

  // but if we want return type to be list only then :
  // toList() :
  final List<int> double = list.map((e) => e * 2).toList();
  print(double); // output: [2, 4, 6]
}
