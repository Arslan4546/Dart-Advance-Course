//void main() {
  // Student s = Student(12, 'Ali');
  // Student s = Student(rollNo: 12, name: 'Ali');
  // Student s = Student(12, name: 'Ali');
  // Student s = Student(rollNo: 12 , name: 'Ali');

  /// ==> ACCESSING PRIVATE DATA MEMBERS
  ///
  //  Student s = Student( 12, name: '' );
  

//}

// class Student {


  // --> PRIVATE DATA MEMBER KA SCOPE WITHIN THE FILE ACCESABLE HO GA
//   final int _rollNo;
//   final String name;
  // static const    String name = ' Ali ';

//  //==> OLD CONSTRUCTOR JAVA

  // Student(int rollNo, String name) {
  //   _rollNo = rollNo;
  //   name = name;
  // }

  //==> SIMPLE CONSTRUCTOR

//  Student(this.rollNo,this.name);

// Student({required this.rollNo , required this.name});

// Student(this.rollNo,{ required this.name});

  // Student({this.rollNo = 12 , required this.name});

  // Student({this.rollNo = 12 ,  this.name = ''});

  //==> How TO ACCESS DATA MEMEBER USING INITIALIZATION LIST

  //==> INITIALIZER LIST

  // 1) PRIVATE DATA MEMBERS 
  //2) FINAL MEMBERS 
  //3) CONSTRUCTOR REDIRECT

  // const Student({required int studentRollNo}):_rollNo = studentRollNo;
    // --> IF ALL THE FIELDS OF HE CLASS ARE FINAL OR STATIC CONST WE CAN MAKE THE CONSTRUCTOR COMPILE TIME CONSTANT
    
  // Student(this._rollNo, {required this.name });
  // Student(this._rollNo , String studentName) : name = studentName;
  // Student(this._rollNo,this.name);


//}
