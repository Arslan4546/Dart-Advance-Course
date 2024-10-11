void main(List<String> args) async {
  var s = await sum(2, 3);
  print(s);
  var a = await avg(s, 4);
  print(a);
}

Future<int> returnInterger() async {
  return Future.delayed(Duration(seconds: 3), () => 23);
}

Future<String> returnString() async {
  return Future.delayed(Duration(seconds: 3), () => "retrun the string");
}

Future<int> sum(int a, int b) async {
  return Future.delayed(Duration(seconds: 3), () => a + b);
}

Future<num> avg(int totalNumb, int totalCount) async {
  return Future.delayed(Duration(seconds: 3), () => totalNumb / totalCount);
}
