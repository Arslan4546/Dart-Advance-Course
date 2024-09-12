typedef NoParameter = void Function();

void main(List<String> args) {
  var v = mainFun(returnInt);
  print(v);
}

// main Function
mainFun(NoParameter n) {
  print('this is the body mainFun');
  return n();
}

// random function return int  and parameters are null
int returnInt() {
  return 1;
}

// iss mai basically humm ny ik experiment kia hai j jab typedef mai ager return mai void ho to humm funcion initialization mai kuch bhi return krva skty hain ye dart waloo ka glitch hai ya koi or cheez pta ni 

