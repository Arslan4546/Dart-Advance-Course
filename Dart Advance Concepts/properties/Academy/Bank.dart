class Bank {
  double _balance = 0.0;

  // read only
  double get GetBalance => _balance;

// write only
 set Deposit(double b) {
    if (b > 0) {
      _balance += _balance + b;
    } else {
      throw Exception("Enter the valid deposit");
    }
  }

  // write only
  set WithDraw(double w) {
    if (w > 0 && w <= _balance) {
      _balance -= _balance - w;
    } else {
      throw Exception("Please Withdraw the valid Amount");
    }
  }
}
