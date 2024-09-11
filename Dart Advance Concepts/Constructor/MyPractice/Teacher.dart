class Teacher {
  //data members 1
  // String name;
  // int age;

  //data members 2
  //   String? name;
  // int? age;

  //data members 3
  // String _name;
  // int _age;

  //data members 4
  // String? _name;
  // int? _age;

  /// these private members are only accessible within the package means within its current file in which they are created

// ==> Method 1

  // Teacher(this._age,this._name);
  // simple method to assigned the values to the data members
  // main1
  // data members 3

// ==> Method 2

  // Teacher(int a, String n)
  //     : _age = a,
  //       _name = n;
  // this initialization of constructor is also called list initializer
  // main2
  // data members 3

// ==> Method 3

  // Teacher(int a, String n) {
  //   this._age = a;
  //   this._name = n;
  // }
  // humm iss ko aisy bhi initialize kr skty hian but iss k lyee humain pany data members ko nullable bnana hoga
  // main3
  // data members 3

  // ==> Method 4

  //Teacher({this._age, this._name});
  // wrong way becasue named parameter can't start with underScore try to remove underScore
  // this is totally wrong method for making constructor of the private variables
  // ager ap ye kam krna chahty hain to method 7 k trah ban lyn

// ==> Method 5

  //Teacher({this.age, this.name});
  //corrct method but vaiales non-private hony chahyee or null-able hony chahyee iss k lyee
  // main4
  // data members 1

// ==> Method 6

  // Teacher({required this.age, required this.name});
  // ager named parameter required hain  to humain data memebers ko nullable bnanyu ki zaroorat ni hai otherwise inn ko nullable banana hoga
  // main5
  // //data members 1

// ==> Method 7

  // Teacher({required int a, required String n})
  //     : name = n,
  //       age = a;

  // main6
  // data members 1

// ==> Method 8

  // Teacher({int? a, String? b})
  //     : _name = b,
  //       _age = a;

  // main7
  // data members 4

// ==> Method 9

  // Teacher({int a = 23, String n = "Arslan"})
  //     : _name = n,
  //       _age = a;

  // main8
  // data members 3
}
