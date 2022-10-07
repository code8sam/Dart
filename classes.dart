class BankAccount {
  double balance = 0.0;
  // constructor :
  BankAccount(double balance) {
    // initializing member variable from a contructor argument :
    // this keyword to denote current object of the class :
    this.balance = balance;
  }

  // instance methods :
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
  // creating instance of BankAccount
  final bankAccount = BankAccount(100.0);
  // . operator for accessing the variables and methods of the Class
  print(bankAccount.balance); // output : 100.0
  // initializing the variable balance
  bankAccount.balance = 200;
  print(bankAccount.balance); // output : 200.0
  // Multiple instances of a given class can be created
  final bankAccount2 = BankAccount(200.0);
  print(bankAccount2); // output : Instance of 'BankAccount'
  double balance2 = bankAccount2.balance = 50;
  print(balance2); // output : 50.0

  // instance method calling :
  bankAccount.deposit(450);
  print(bankAccount.balance); // output : 650.0

  // instance method calling : withdraw :
  bankAccount.withdraw(50);
  print(bankAccount.balance); // output : 600.0
}
