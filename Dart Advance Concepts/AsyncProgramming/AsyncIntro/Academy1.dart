void main(List<String> args) {
  // File file = File("A:\Arslan's Folder\courses\English Learning Course");
  // file.readAsBytes().then(
  //       (value) => print(value),
  //     );
  // file.readAsString().then(
  //       (value) => print(value),
  //     );

  // sum(12, 12).then(
  //   (value) => avg(value, 4).then(
  //     (value) => print(value),
  //   ),
  // );
// iss mai ye hai k phly sum mai humm ny value de hain or phir then mai sum k jwab value mai aya or phir value average function mai chala jyee ga or average ka jwab print ho jyee ga print function k ander

  var f1 = returnInterger();
  f1.then(
    (value) => print(value),
  );
  // print(f1); // instance of future
}

Future<int> returnInterger() async {
  return Future.delayed(Duration(seconds: 3), () => 23);
}

Future<String> returnString() async {
  return Future.delayed(
      Duration(seconds: 3), () => "This will retrun the string");
}

Future<int> sum(int a, int b) async {
  return Future.delayed(Duration(seconds: 3), () => a + b);
}

Future<num> avg(int totalNumb, int totalCount) async {
  return Future.delayed(Duration(seconds: 3), () => totalNumb + totalCount);
}
