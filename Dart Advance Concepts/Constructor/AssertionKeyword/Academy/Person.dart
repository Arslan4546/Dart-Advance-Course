class Person {
  int _age;
  Person({required age})
      : assert(age > 0, "Age should be greater the zero"),
        _age = age;

  @override
  String toString() {
    return "Age : $_age ";
  }
}
