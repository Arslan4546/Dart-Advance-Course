class Student {
  int? rollNo;
  String? name;

  Student(this.name, this.rollNo);

  factory Student.copyWith(Student s) {
    return Student(s.name, s.rollNo);
  }
}

void main(List<String> args) {
  Student s = Student("Arslan", 1161);
  Student s1 = Student.copyWith(s);
  print(s1.name);
  print(s1.rollNo);
}
