void main() {
  // sets
  var countries = {'Italy', 'UK', 'Russia'};
  //countries[0]; --> this way is not possible in Set
  print(countries.elementAt(1));
  // add an item
  countries.add('Iceland');
  print(countries);
  // remove an item
  countries.remove('UK');
  print(countries);

  // union, intersection, difference

  var EUcountries = {'Italy', 'UK', 'Russia'};
  var ASIANcountries = {'India', 'China', 'SriLanka', 'Russia'};
  print(EUcountries.union(ASIANcountries));
  print(EUcountries.intersection(ASIANcountries));
  print(EUcountries.difference(ASIANcountries));

  // use for-in loop to print items in Set
  for (var country in EUcountries) {
    print(country);
  }

  // let's do this
  // you have to get output --- {1, 5}

  const a = {1, 3};
  const b = {3, 5};
  var c = a.union(b).difference(a.intersection(b));
  print(c);
}

/*

output:

UK
{Italy, UK, Russia, Iceland}
{Italy, Russia, Iceland}
{Italy, UK, Russia, India, China, SriLanka}
{Russia}
{Italy, UK}
Italy
UK
Russia
{1, 5}
Exited

*/
