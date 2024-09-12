typedef voidType = void Function(String);

void main(List<String> args) {
  // var v = mainFun((String name) {
  //   return name;
  // });

  // this above case is not valid becasue it give a compile time error

  var v = mainFun(PrintName); // but this is the valid case

  print(v);
}

mainFun(voidType v) {
  print("This is the body Inside the Main Fucnction");
  return v("Arslan");
}

String PrintName(String name) {
  return name;
}
