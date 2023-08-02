class Complex {
  // Complex(this.re, this.im);

  // make constructor const

  const Complex(this.re, this.im);

  // final so that they cannot change once they are created
  final double re;
  final double im;
}

void main() {
  // 'const' constructors.
  // Suppose that we want to create a class to represent a Complex number.
  // And in mathematics, a complex number is a number that can be represented
  // by a real part and an imaginary part.

  // we can create objects of this class by typing final ...
  // and we can pass (1, 2) as arguments, for example

  final complex = Complex(1, 2);

  // And if you remember, when we create variables of any of the
  // existing types, we can declare them as const

  // if we try to declare this variable as const it generates two errors
  // telling us that:
  // 1. The constructor being called isn't a const constructor.
  // 2. Const variables must be initialized with a constant value.

  // So how can we fix this?

  // Well, since this class has only immutable variables that are declared
  // with ''final', then it is best to declare it with a 'const' constructor

  // So as a best practice, when you create a class that has only immutable

  // final variables, then you should give it a 'const' constructor.

  // And when you do this, the compiler can do some optimizations,

  // and make your program more efficient.

  // On the other hand, if one or more of these variables is not final,

  // then you'll get an error because you: Can't define a const constructor

  // for a class with non-final fields.

  // And this makes sense, because if this member variable is mutable,

  // then instances of this class can't be 'const' in the first place.

  // Since this class has a const constructor, you can also use it to
  // define a const list literal. And inside it, we can add complex numbers :

  const list = [
    Complex(1, 2),
    Complex(3, 4),
  ];

  // So the bottom line here is that when you create a class with
  // a const constructor, you can use it to create instances that
  // are compile-time constants, just like you do with the built-in types
  // such as int, double, or String. And you can also create
  // const collections containing instances of your class.
}
