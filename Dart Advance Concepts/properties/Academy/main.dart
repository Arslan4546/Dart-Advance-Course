import 'Bank.dart';
import 'Student.dart';

void main(List<String> args) {
  // student class object and other fucntionalites

  Student student = Student();
  student.setName = "Arslan";
  print(student.Getname);
  student.setAge = 18;
  print(student.Getage);
  print(student.getResult);

  // bank class object and functionalites

  Bank bank = Bank();
  print(bank.GetBalance);
  bank.Deposit = 1000.0;
  print(bank.GetBalance);
  bank.WithDraw = 500.0;
  print(bank.GetBalance);
}
