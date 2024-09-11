typedef NoParameter = void Function();

void main(List<String> args) {
  // var func = foo();
  // func();

  // var func = soo()();

  var func = foo1(hoo);
  func();
}

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

void hoo() {
  print('hoo');
}
