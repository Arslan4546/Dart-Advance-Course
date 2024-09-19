int? number;

void main(List<String> args) {
  // Method 1
  Student s = Student();
  s.name = '';
  s.rollNo = 12;

// Method 2
  //......CASCADE OPERATOR
  Student s2 = Student()
    ..name = ''
    ..rollNo = 12;
  Student? s1 = Student()..name = 'Ali';
  print(s1?.name ?? 12);

  //......COLLIASING OPERATOR
  // int number1 = number ?? 12;
  // print(number1);
  // print(number);
  // iss mai ye hota hia k ager number null hai to ye number1 mai 12 store krnva dy ga but number null he rhy ga

  // int number1 = number ??= 12;
  // print(number1);
  // print(number);
  // but iss mai ye hai k ager number null hai to phly 12 number mai rakhvaye ga or bad mai number1 ko assign ho jyee gga 12
}

class Student {
  int? rollNo;
  String? name;

  Student();
}
