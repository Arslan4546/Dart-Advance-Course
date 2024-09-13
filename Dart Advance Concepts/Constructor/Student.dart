// class Student {
//   int _RollNo;
//   String _name;
  // data members

  // Student(int r, String n) {
  //   _RollNo = r;
  //   _name = n;
  // }
  
  // this is the old method in java langauge

  // Student(this._RollNo, this._name);
  // this is the new method in dart language
  // you can access the private variable by using this method
  // this will not show the error if you use the Constructor in the another package or file

  //Student({required this._RollNo, required this._name});
  // this will give compile time error

  //Student({this.RollNo, this.name});
  // this  will not show the error if the data members are public and nullable

//  Student({required int RollNo, required String name})
//       : _RollNo = RollNo,
//         _name = name;
  // this will not give an errro
  // this is also called list initializer constructor

  // Student({int RollNo = 23, String name = "Arslan"})
  //     : _RollNo = RollNo,
  //       _name = name;

  /// this also will not give the runtime error
  ///  // this is also called list initializer constructor
//}
