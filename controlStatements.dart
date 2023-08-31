void main() {
  // if-else control statement :

  //int age = 26;
  const age = 26;

  if (age < 16) {
    print('Junior Ticket.');
    print('price is \$8.');
  } else if (age >= 60) {
    print('Senior Ticket.');
    print('Price is \$6.');
  } else {
    print('Regular Ticket.');
    print('Price is \$10.');
  }
  print('Enjoy your visit.');

  // while loop

  var i = 1;
  while (i <= 5) {
    print(i);
    i++;
  }

  // for loop
  for (var i = 1; i < 6; i++) {
    print('$i ');
  }

  // for-in loop
  for (var item in [1, 2, 3, 4, 5]) {
    print(item);
  }

  // switch control statement :

  const condn = 2;

  switch (condn) {
    case 1:
      print('You won the Gold Medal');
      break;
    case 2:
      print('You won the Silver Medal');
      break;
    case 3:
      print('You won the Bronze medal');
      break;
    // default is a fallback
    // executed when none of the condition matches
    default:
      print('Better Luck Next Time');
      break;
  }
}

/*

Regular Ticket.
Price is $10.
Enjoy your visit.
1
2
3
4
5
1 
2 
3 
4 
5 
1
2
3
4
5
You won the Silver Medal


*/
