void main(List<String> args) {
  outerFunc(); // this will just the print the out fucntion statement
  outerFunc()(); // but this will print the inner and outer function statement also
}

outerFunc() {
  print("This is the outer Function");

  innerFunc() {
    print("this is the inner FUnction!");
  }

  return innerFunc;
}

/// you can also creat the inner function inside the the function and call the inner fuction simply written as in th above code
/// 