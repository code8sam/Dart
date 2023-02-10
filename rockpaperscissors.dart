/*

Build a command line tool that can play rock, paper and scissors.

When started, the program should show this prompt:

Rock, paper or scissors? (r/p/s)

It should then read the user input and use it as follows:

If the user enters "r", "p", or "s",

treat this as a valid move

If the user enters "q", quit the program

If the user enters anything else, show "Invalid input", and prompt again

After the user has entered a valid move,

generate another move at random,

then compare the two moves according to the rules of the game.

For example, if you played "rock", and the program played "paper",

then the output should be:

You played: rock AI played: paper You lose

The game should continue indefinitely until the player quits by pressing "q".


*/

import 'dart:io';

import 'dart:math';

enum Move {
  rock,
  paper,
  scissors,
}
void main() {
  // random number generator :
  final rng = Random();
  // rock - paper - scissors
  while (true) {
    //print('Rock, Paper, Scissors? (r/p/s)');
    stdout.write('Rock, Paper, Scissors? (r/p/s) ');

    // read user input from the console --- via --- standard input
    // import dart.io ...
    // readlineSync() reads data from the console and returns string ...
    final input = stdin.readLineSync();

    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }

      final random = rng.nextInt(3);
      final aiMoves = Move.values[random];

      // print the move ...
      print('You played : $playerMove');
      print('ai played : $aiMoves');

      // let's write the condition ...
      // for -> tie / loose / win ...

      if (playerMove == aiMoves) {
        print('It\'s a draw');
      } else if (playerMove == Move.rock && aiMoves == Move.scissors ||
          playerMove == Move.paper && aiMoves == Move.rock ||
          playerMove == Move.scissors && aiMoves == Move.paper) {
        print('You win');
      } else {
        print('You lost it');
      }
      print('Selcted : $input');
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid Input');
    }
  }
}
