class Credentials {
  const Credentials({this.email = '', this.password = ''});
  final String email;
  final String password;

  //method takes two named arguments
  Credentials copyWith({
    String? email,
    String? password,
  }) {
    return Credentials(
        email: email ?? this.email, password: password ?? this.password);
  }

  @override
  String toString() => 'Credentials($email, $password)';
}

void main() {
  const credentials = Credentials();

  final updated1 = credentials.copyWith(email: "abc@xyz.com");
  print(updated1);
  final update2 = updated1.copyWith(password: "123abc");
  print(update2);
}
