void main() {
  // only some examples of String methods

  String exp = 'Dart is the new way.';

  print('${exp.toUpperCase()}');

  print('${exp.toLowerCase()}');

  String bike = 'I love 250 cc bikes';
  print('$bike');
  String newBike = bike.replaceAll('250', '300');
  print('$newBike');

  // String Interpolation

  var temperature = 33;

  print('$temperature');
  print('${temperature}C');
  print(
      'The temp here nowadays is usual to go above ${temperature}\u2103  easily');

  // String escaping
  print("I'm in love with the Coffee");
  // OR using escape sequence \' for ' symbol :
  print('I\'m in love with the Coffee');

  // raw string example below -> (r'~~~~~~~') ->
  print(r'C:\Windows\system32');

  //Trick for New Line

  /*
  If we want new sentences in a new line, then we can either use println or \n but this becomes a difficult task when there are many sentences. So, in such case, we can use triple quotes method to make things easy  “””     “””
  */

  String newLinesExample = """
                          First Sentence
                          Second Sentence
                          Third Sentence
                           """;
  print(newLinesExample);
}


/*

DART IS THE NEW WAY.
dart is the new way.
I love 250 cc bikes
I love 300 cc bikes
33
33C
The temp here nowadays is usual to go above 33℃  easily
I'm in love with the Coffee
I'm in love with the Coffee
C:\Windows\system32
                          First Sentence
                          Second Sentence
                          Third Sentence
                           


*/
