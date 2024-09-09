//==> Knowledge About Function Backend means what compiler do when we create any function in dart language

// class Person {}

// class Student extends Person {}

// void main(List<String> args) {
//   Person p = Student();
// Student s = Person(); // compile-time error
// }

// iss sy ye prooof hota hai k parent class apny child class k object ka reference rakh skti hai
// but child class apny parent class ka object ni rakh skti
// issi lyee jab bhi koi function ya method banta hai to implicily compiler uss ki class bna deta hai or uss class ko Function jo k tmam functions ki parent class hai uss k sath extend kr deta hai
// isssi lyee jb hum fuction ya method bnaty hain uss ka reference  function apni class k object mai rakh skta hai

// simple example:

// void DemoFun() {
//   print("Arslan is the best programmer");
// }

// void main(List<String> args) {
//   Function f = DemoFun;
//   f();
// }

// so that it will work becase the DemoFunc is the reference variable of the function class object

//==> Another concept About Function

// class Person {}

// class Student extends Person {
//   void StudentFun() {
//     print("THis is Student Class Function");
//   }
// }

// class Teacher extends Person {
//   void TeacherFun() {
//     print("THis is Teacher Class Function");
//   }
// }

// void main(List<String> args) {
//   Person studentObjectReference = Student();
//   Person teacherObjectReference = Teacher();
// }

// jiss trah sy Student or Teacher class apny object k reference apny child k pass store krva rhi hai iss trah sy jab humm bohat sary function banaty hain to compiler unn ko same class mai rakh deta hai but un ka reference change ho jata hia jab humm call krty hain kissi function ko to



// ==> How to make Explicitly callable class


// void main(List<String> args) {
//   Student s = Student();
//   print(s);
//   s.call(); // same as above
// }

// class Student {
//   void call() {
//     print("this  is call metnod in student class");
//   }
// }
