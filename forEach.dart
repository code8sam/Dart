void main() {
  // list of values
  const list = [1, 2, 3];
  // print each value line by line
  // we can use for-in loop
  // also we can do this by forEach loop :
  //
  //
  // using anonymous function if one line
  list.forEach((element) => {print(element)});
  // use like this if more lines are in the method :
  // but for this for-in is better ... but yes, this way also exist ...
  list.forEach((element) {
    print('The numbers are :');
    print(element);
  });
  // OR
  // pass an existing named function as an argument, provided that it has a compatible type
  list.forEach(print);
}

/*

1
2
3
The numbers are :
1
The numbers are :
2
The numbers are :
3
1
2
3
Exited

*/
