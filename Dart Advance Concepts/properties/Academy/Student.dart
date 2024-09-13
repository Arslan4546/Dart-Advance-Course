class Student {
  String _name = "";
  int _age = 0;
  String _result = "Pass";

  // just like getter through this user will get the name
  String get Getname => _name;

  // like setter through this user will set the name according to his requirments
 set setName(String n) {
    if (n == "") {
      print("please Enter your Name:");
    } else {
      _name = n;
    }
  }

  // just like getter through this user will get the age
  int get Getage => _age;

// like setter through this user will set the name according to his requirments
  set setAge(int age) {
    if (age > 0) {
      _age = age;
    } else {
      throw Exception("Please Enter a Valid Age!");
    }
  }

  // getter method means user can only read his result but not write and change his reslut again

  String get getResult => _result;
}
