//......TYPE DEF ABSTRCAT CLASS
typedef NoParameter = void Function();
typedef OneParamter = num Function(String name, num number);
//abstract  class NoParameter extends Function {
// }
void main(List<String> args) {
  // Student s = Student();
  // s(12);
  // s.call();
  // Function f = s;
  // Function f = foo;
  // f();
  // NoParameter ref = foo;

  // anyFunc(soo, 12);
  noParameter(foo);
  OneParamter oneParamter = onPara;
  Function f = Student();
  f.call();
}

num onPara(String name, num number) {
  return number;
}

num sum(num numberOne, num numberTwo) {
  return numberOne + numberTwo;
}

void noParameter(NoParameter noParameter) {
  noParameter();
}

void anyFunc(Function func, int number) {
  func(number);
}

//....Functions are also object in dart
///......FUNCTION KI CHILD CLASSES
//...CALLABLE

class Student {
  void call(int number) {
    print('this is a call function');
  }
}

//.....GLOBAL FUNCTION
void foo() {
  print('foo func');
}

//......BACKEND
//... class ANYNOMOUS extends Function {
//void call() {
// print('foo func');
//}
// }

void soo() {
  // print(number);j
}
