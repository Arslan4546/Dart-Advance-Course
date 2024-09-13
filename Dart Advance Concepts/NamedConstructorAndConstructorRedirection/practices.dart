// ==> Practice of Named Constructor

class Student {
  int? age;
  String? name;
  int? rollNo;
  String? address;

  Student(this.name, this.age);
  Student.Address(this.name, this.age, this.address);
  Student.RollNo(this.name, this.age, this.rollNo);
}

void main(List<String> args) {
  Student s1 = Student("Arslan", 22);
  Student s2 = Student.Address("Mannan", 23, "Liaquatpur");
  Student s3 = Student.RollNo("Arslan", 23, 1161);
  print(s1.address);
  print(s2.age);
  print(s3.name);
}
