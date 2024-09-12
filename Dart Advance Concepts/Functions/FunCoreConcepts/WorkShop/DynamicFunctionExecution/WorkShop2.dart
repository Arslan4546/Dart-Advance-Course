typedef NoParameter = void Function();
typedef OneParameter = void Function(int number);

void main(List<String> args) {
  // var func = foo();
  // func();

  // var func = soo()();

  // var func = foo1(hoo);
  // func();
  //......DYNAMIC FUNCTIONS

  // var func = foo1(() {
  //   print('dynamic functions');
  // });
  // func();
  //.... inline function or closure
  // foo1(
  //   () => print('inline function'),
  //   //     () {
  //   //   print('inline function');
  //   // }
  // );
}

//.......Inline function
String getName() => 'Hello';

// String getName() {
//   // var a = 10;
//   // a = a + 1;
//   // a+= 1
//   return 'hello';
// }

void onParam(OneParameter oneParameter) {}

NoParameter foo() {
  return () {
    print('inner func');
  };
}

dynamic soo() {
  void hoo() {
    print('hoo');
  }

  return hoo;
}

//.....HIGHER ORDER FUNCTIONS
NoParameter foo1(NoParameter noParam) {
  noParam();
  return () {
    print('my func');
  };
}

int soo1(int number) {
  return 12;
}

// String hoo() {
//   print('hoo');
//   return ' ';
// }

void hoo() {
  print('hoo');
}
