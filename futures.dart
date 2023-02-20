/*

suppose that we want to write some code to run a cafe.

And the way this works is that a user can place an order,

and when this is ready, we can say that the order is complete.

To do this, here we can create function that returns a Future

and we can call this fetchUserOrder()

and then we want to simulate a delay of 2 seconds before

the order is ready

*/

/*

So here we can use the arrow notation and return Future.delayed(

And as the first argument, we can pass a 'Duration' object

and add a(second name argument with the value of 2)

And then we need to provide an anonymous function that

will produce our result. So here we can type an empty parameter list

and use the arrow notation to return Cappuccino

So over here we have used 'Future.delayed'

which is a factory constructor for the Future class.

This works by adding a delay, and then returns a result

using an anonymous function.

So this Future produces a 'String' value,

and that's why we have used 'Future of String' as the return type.

*/

Future<String> fetchUserOrder() => Future.delayed(
      Duration(seconds: 2),
      // () => throw Exception('Out of milk'),
      () => 'Cappuccino',
    );

// let's see how to use it in main method now ---

void main() {
  print('Program Started');

  // And because this returns a Future,
  // then we can type 'then' which is a method
  // that gives us the result inside an anonymous function

  fetchUserOrder()
      .then((order) => print('Order is ready: $order'))
      .catchError((error) => print(error))
      .whenComplete(() => print('Done'));

  // And if we open the console, and run this program,
  // we can see that the program has started
  // and after a small delay, we get
  // Order is ready: Cappuccino
  // And this confirms that our program only
  // produces this result when the Future completes

  // Output:

  /*

  Program Started
  Order is ready: Cappuccino
  Exited

  */
}
