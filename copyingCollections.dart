void main() {
  final list = [1, 2, 3];

  // copy now ...
  final copy1 = list;
  // try to modify one of the items inside this list
  copy1[0] = 0;
  // print now ...
  // upon print you'll notice that values get modified in both lists...
  /*
    both variables will point to the same location.
    As a result, if we modify an item using any,
    then it will affect both variables, because they point to the same location.
  */
  print('list: $list');
  print('copy1: $copy1');

  // so ways to copy a collection to another is ---

  final copy2 = [
    for (var item in list) item,
  ];
  print(copy2);

  // OR use spread operator

  final copy3 = [...list];
  print(copy3);

  /*
  In summary, we have just learned that in order to copy a list
  or collection, we can't just assign it to a new variable like this.
  But instead, we should use the spread operator.
  And this will guarantee that the original vales are copied to a new location in memory.
  */
}
