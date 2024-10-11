void main(List<String> args) {
  var value = "Arslan";
  value.toInt();
  print(value);
}

extension MyStr on String? {
  bool isDigit() {
    return this?.runes.every((element) => element >= 48 && element <= 57) ??
        false;
  }

  int? toInt() {
    return this != null && isDigit() ? int.parse(this!) : null;
  }
}
