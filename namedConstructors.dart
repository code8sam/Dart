class Complex {
  // Example of default constructors :
  const Complex(this.re, this.im);

  // Inside the class declaration, we can add a new named constructor
  // called Complex.zero(): and then we can use an initializer list to set
  // real part to 0 and imaginary part to 0.
  // As you can see, we can define a named constructor by typing the
  // name of the class, followed by a dot and then the name that
  // we want to give to our constructor.

  const Complex.zero()
      : re = 0,
        im = 0;

  // Similarly for others too

  const Complex.identity()
      : re = 1,
        im = 0;

  const Complex.real(this.re) : im = 0;

  const Complex.imaginary(this.im) : re = 0;

  // since these member variables are final, we can make all
  // these const constructors

  final double re;
  final double im;
}

void main() {
  // there are some special complex numbers that are used quite
  // often in practice

  // 0 + i*0

  // final zero = Complex(0, 0);

  // And now that we have all these named constructors, we can modify
  // these declarations and replace

  final zero = Complex.zero();

  // 1 + i*0

  // final identity = Complex(1, 0);

  final identity = Complex.identity();

  // a + i*0

  // final real = Complex(3, 0);

  final real = Complex.real(3);

  // 0 + i*b

  // final imaginary = Complex(0, 4);

  final imaginary = Complex.imaginary(4);

  // Now this code is fine, but it would be better if we could have
  // some special constructor names that we can reserve for these numbers.
  // And to do that, we can use named constructors
}
