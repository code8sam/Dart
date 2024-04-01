class BankAccount {
  BankAccount(this._balance);
  // making this variable private so that it becomes inaacessible outside
  // BankAccount class

  // double balance;
  double _balance;
  // getter for balance
  double get balance => _balance;

  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (_balance > amount) {
      _balance -= amount;
    }
  }
}
