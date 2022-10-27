// initialize arguments with either initializer list or with short-hand syntax :

// in Dart constructors are always declared before any member variables and methods
class BankAccount {
  // BankAccount(double balance) {
  //   this.balance = balance;
  // }

  // Using Initialize lists to initialize the member variables

  // Dart is smart enough to know that the variable on the
  // left hand side of the assignment is the balance member variable,
  // and the variable on the right hand side of the assignment
  // is the balance argument

  // BankAccount({double balance = 0.0, required String accountHolder})
  //     : balance = balance,
  //       accountHolder = accountHolder;

  // double balance = 0.0;

  //because we are inside an initializer list. And since we can initialize
  // the balance like this, we no longer need to assign it to 0
  // when we declare this variable.

  // short-hand syntax

  BankAccount({
    required this.accountHolder,
    this.balance = 0,
  });

  double balance;
  String accountHolder;

  void deposit(double amount) {
    balance += amount;
  }

  bool withdraw(double amount) {
    if (balance > amount) {
      balance -= amount;
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  final bankAccount = BankAccount(accountHolder: "Satyam Kumar", balance: 100);
  print(bankAccount.balance); // output : 100.0
}
