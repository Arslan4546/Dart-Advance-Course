typedef OneParameter = int Function(int number);

void main(List<String> args) {
  var f = mainFun((int n) {
    print("this is the function body");
    return n + 10;
  });
  print(f);
}

mainFun(OneParameter n) {
  print("this is the main Function Body");
  return n(12);
}

// iss mai basically humm ny mainFunc ka ik function banany hai or uss k ander ik parameterr int wala function pass kia hai or uper main function mai jab mainFun ko call krty waqat one parameter ka function udhr he banaya hai or nichy mainFun mai parameter k reference k ander int value dy k return krvaya hai 
// ye bhi ik higher order ki ik type hai 