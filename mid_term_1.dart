class BankAccount {
  int accountNumber=0;
  double balance=0;
  String account_type='';
  double interest_rate=0;

  BankAccount(int an, double b, String at, double ir)
  {
    accountNumber = an;
    balance = b;
    account_type = at;
    interest_rate = ir;
  } 

  void deposit(double amount) {
    balance += amount;
    print('$amount deposited to your account');
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print('$amount withdrawn from your account');
    } else {
      print('You do not have enough funds to withdraw $amount');
    }
  }

  void addInterest() {
    double interestAmount = balance * interest_rate / 100;
    balance += interestAmount;
    print('Interest added. New balance: $balance');
  }

  void display() {
    print('Account Number: $accountNumber');
    print('Account Type: $account_type');
    print('Balance: $balance');
    print('Interest Rate: $interest_rate %');
  }
}

void main() {
  BankAccount account1 = BankAccount(34444444, 50000.0, 'Saving', 2.0);
  BankAccount account2 = BankAccount(88888888, 200000.0, 'Current', 1.5);

  print('Account information before operations:');
  account1.display();
  account2.display();

  print('\nDepositing to account 1:');
  account1.deposit(500.0);

  print('\nWithdrawing from account 2:');
  account2.withdraw(300.0);

  print('\nAdding interest to account 1:');
  account1.addInterest();

  print('\nAccount information after operations:');
  account1.display();
  account2.display();
}
