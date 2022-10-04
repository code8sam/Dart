void main() {
// Given Question :
// String text = 'I like pizza';
// String topping = 'with tomatoes';
// String favourite = '$text $topping';
// String newText = favourite.replaceAll('pizza', 'pasta');
// favourite = 'I now like curry';

// Let's discuss now :

// prefer 'const' over 'final' over 'var'

// first two variables are initialized with String literals, which are
// compile-time constants. For this reason, we can declare them both as const.

  const text = 'I like pizza';
  const topping = 'with tomatoes';

// Next, we have this favourite variable, which is created here.
// Now, this expression combines these two variables with string interpolation.
// But Dart is smart enough to still resolve this into a compile time constant.

// So if we wanted, we could try to declare this as 'const' as well.
  const favourite = '$text $topping';
// But when we do this, we get an error, saying that constant variables can't
// be assigned a value. And that's because here we're re-assigning this variable
// on this line.
  // favourite = 'I now like curry';

// So if we want this program to be valid, we have two options.
// The first one is to declare this variable as 'var', and this will make this
// error go away. But as we said before, it's better to prefer 'const'
// when possible. So another option would be to create a new variable
// to hold this value.

  const newFavourite = 'I now like curry';

// newtText variable, which is initialized with an expression that
// replaces 'pizza' with 'pasta'.

  // String newText = favourite.replaceAll('pizza', 'pasta');

// Now, this expression is not a compile-time constant, so we can't
// declare this variable as 'const'. But since it's only set once,
// we can declare it as 'final', like this.

  final newText = favourite.replaceAll('pizza', 'pasta');

  print('$newFavourite');
  print('$newText');
}
