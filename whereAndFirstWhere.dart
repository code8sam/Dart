void main() {
  // filter items using where
  // find items using firstWhere

  // create a list of values
  const list = [1, 2, 3, 4];
  // where :
  final even = list.where((element) => element % 2 == 0);
  print(even); // output : (2, 4)
  // firstWhere :
  // get the first item that matches a certain condition orElse print ... ...  :
  final value =
      list.firstWhere((element) => element % 5 == 0, orElse: () => -1);
  print(value); // output: -1
}
