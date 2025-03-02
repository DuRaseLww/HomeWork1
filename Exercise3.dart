class BankAccount {

  int _accountNumber;

  double _balance;

  BankAccount(this._accountNumber, this._balance);

  void deposit(double amount) {

    if (amount > 0) {

      _balance = _balance + amount;

    } else {

      print("Введите корректное значение");

    }

  }

  void withdraw(double amount) {

    if (amount > 0) {

      if (_balance >= amount) {

        _balance = _balance - amount;

      } else {

        print("Недостаточно средств");

      }

    } else {

      print("Введите корректное значение");

    }

  }

  double getBalance() {

    print("Баланс: $_balance");

    return _balance;

  }

}

void main() {

  BankAccount bankAccount = BankAccount(463936, 456.36);

  BankAccount bankAcount2 =
    BankAccount(6383, 3947.484);
  
  bankAccount.getBalance();

  bankAccount.withdraw(321);

  bankAccount.getBalance();

  bankAccount.deposit(789);

  bankAccount.getBalance();

  bankAccount.withdraw(-123);

  bankAccount.deposit(-568);

  bankAccount.withdraw(2000);

}