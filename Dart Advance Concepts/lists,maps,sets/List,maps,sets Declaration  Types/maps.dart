void main(List<String> args) {
  // simple example to declare a map
  Map<int, String> myMap = <int, String>{
    1: "Arslan",
    2: "Hannan",
    3: "Mannan",
  };

  print(myMap);
  print(myMap.runtimeType);

// example to check is this will be map or set
  var v = {};
  // this will be map becasue the Curly barces are the sign of map from the begging in the dart
  print(v.runtimeType);
}
