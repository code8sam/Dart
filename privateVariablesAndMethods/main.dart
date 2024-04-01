import 'BankAccount.dart';

void main() {
  // Private variables and methods are essential in object-oriented programming
  // because they allow us to encapsulate certain things that should
  // not be accessible outside our classes

  // In Dart, identifiers are public or priavte at FILE LEVEL
  final bankAccount = BankAccount(100);
  bankAccount.deposit(200);
  print(bankAccount.balance); // output : 300.0
}
