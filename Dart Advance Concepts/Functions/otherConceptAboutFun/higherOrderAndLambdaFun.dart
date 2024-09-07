// Higher order function example
void main(List<String> args) {
  var number = [
    2,
    3,
    4,
    1,
  ];

  Function f = (int sum) => print(sum);
  myFun(number, f);

  Function1()(); // calling a return function inside Function
}

void myFun(List<int> list, Function result) {
  int sum = 0;
  for (var i = 0; i < list.length; i++) {
    sum += list[i];
  }
  result(sum);
}

// basically ye hum ny myFun name k ik function banaya hai jsi mai ik parameter mai hum ny ik list or dosry mai ik Function pass kia hai or uper main mai hum ny list bnna k function k argments mai dee or sum print krny function bna k myFun k argument mai dy dia hai

Function1() {
  return () => print("Arslan is the Best Programmer Ever!");
}
// making a function Function1 that return an another fucntion

