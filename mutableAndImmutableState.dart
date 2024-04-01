// you can declare immutable properties with final :
class BankAccount {
  BankAccount({
    required this.accountHolder,
    this.balance = 0,
  });

  double balance;
  final String accountHolder;

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

  // However, we could argue that the `accountHolder` is something that
  // shouldn't change. Because when we create a bank account, that is tied
  // to an individual and we shouldn't be able to change the account holder
  // But with the current setup, it is perfectly possible to type :

  // bankAccount.accountHolder = "Alice";

  // And if we want this to be not possible, then we have to make this
  // an immutable variable by declaring it as 'final'

  // final String accountHolder;

  // and now we can't do this :
  // bankAccount.accountHolder = "Alice";
}
