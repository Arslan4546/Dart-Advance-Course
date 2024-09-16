// ==> Exampe 1 About COnstructor Redirecting

// const double xOrigin = 0;
// const double yOrigin = 0;
// const double maleTeachersBus = 0;

// class Point {
//   final double x;
//   final double y;

//   // Sets the x and y instance variables
//   // before the constructor body runs.
//   Point(this.x, this.y);

//   //===========NAMED CONSTRUCTOR============
//   Point.origin()
//       : x = xOrigin,
//         y = yOrigin;
// }
// class TeachersPoint extends Point{
//   final double b;
//   TeachersPoint.origin()
//     : b = maleTeachersBus,
//     super.origin();
// }

// ==> Exampe 2 About Methods of making constructor with multiple parameters

void main() {
// var teachersPoint = TeachersPoint.origin();

  //Student s = Student(12, 'Ali');
  // Student s = Student(rollNo: 12, name: 'Ali');
  // Student s = Student(12, name: 'Ali');
  // Student s = Student(rollNo: 12 , name: 'Ali');

  // //......PRIVATE
  // Student s = Student( 12, name: '' );

  //const Duration d = Duration(seconds: 2);
}

class Student {
  //......PRIVATE DATA MEMBER KA SCOPE WITHIN THE FILE ACCESABLE HO GA

  // final int _rollNo;
  // final String name;

  //  Student(int rollNo, String name){
  //   _rollNo = rollNo;
  //   name = name;
  //  }

  // ==> SIMPLE CONSTRUCTOR

//   const Student(this.rollNo,this.name);
//.......IF ALL THE FIELDS OF HE CLASS ARE FINAL WE CAN MAKE THE CONSTRUCTOR COMPILE TIME CONSTANT

// Student({required this.rollNo , required this.name});
// Student(this.rollNo,{ required this.name});
//   Student({this.rollNo = 12 , required this.name});
//   Student({this.rollNo = 12 ,  this.name = ''});

  //==> PRIVATE DATA MEMEBER INITIALIZATION

//   Student(this._rollNo,this.name);

//==> INITIALIZER LIST

//1) PRIVATE DATA MEMBERS
//2) FINAL MEMBERS
//3) CONSTRUCTOR REDIRECT

//    const Student({required int studentRollNo}):_rollNo = studentRollNo;

//         Student(this._rollNo, {required this.name });

//         Student(this._rollNo , String studentName) : name = studentName;

  // Student(this._rollNo, this.name);
}
