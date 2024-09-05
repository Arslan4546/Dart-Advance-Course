// void main(List<String> args) {
//   Function f = Sum;
//   print(f(2, 3));
// }

// num Sum(num a, num b) {
//   return a + b;
// }

// ye uper wala program ik simple function hai or jab he humm koi function banaty hain compiler uss ki implicity backend py ik just callAble class bna deta  hai or aisy he jab bhi koi function banyn gy hum har bari compiler ik callable class bna dy ga implicily

// or jo compiler class create krta hai jo Backend per bani hai wo class Function Class ko extends kry gee mtlab ab Sum function ab function class ki properties bhi access kr skti hai or jo sum function hai wo ab function class k object ka reference rakh skta hai q k parent apny child class ka object rakh skti hai but child apny parent class  ka object nhi rakh skti hai or ye inheritance ka rule
//

class Student {
  void call() {
    print("call fucntion is called");
  }
}

void main(List<String> args) {
  Student student = Student();
  student(); // you can also access call method by usning thsi technique
  student.call(); // or  you can also using this to access the call method
}
