void main() {
  /*
  Write a program that calculates the average rating score for each restaurant,

  adds it as an `avgRating` key-value pair for that restaurant.

  You can use the following code as a starting point:

  And just as a reminder, here we are using the as operator

  to make sure that the type of this ratings variable will be a List of .
  */

  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];

  // print(restaurants);

  // for (var item in restaurants) {
  //   print(item);
  // }

  // ...

  for (var restaurant in restaurants) {
    final ratings = restaurant['ratings'] as List<double>;

    var total = 0.0;

    for (var rating in ratings) {
      total += rating;
    }
    final avgRating = total / ratings.length;

    restaurant['avgRating'] = avgRating;
    print(restaurant);
  }
}
/*

output:

{name: Pizza Mario, cuisine: Italian, ratings: [4.0, 3.5, 4.5], avgRating: 4.0}
{name: Chez Anne, cuisine: French, ratings: [5.0, 4.5, 4.0], avgRating: 4.5}
{name: Navratna, cuisine: Indian, ratings: [4.0, 4.5, 4.0], avgRating: 4.166666666666667}
Exited

*/
