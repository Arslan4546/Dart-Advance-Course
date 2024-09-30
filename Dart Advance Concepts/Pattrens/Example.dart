void main(List<String> args) {
  int value = 10;

  var v = switch (value) {
    1 => "one", // in this line 1 is constant pattren
    2 => "one",
    3 => "one",
    4 => "one",
    _ => "invalid Digit",
  };

  print(v);
}
