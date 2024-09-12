typedef Compareable = bool Function(Object, Object);

class Student {
  int age;
  String name;
  int rollNo;

  Student({required this.age, required this.name, required this.rollNo});

  @override
  String toString() {
    return "Name : $name , Age : $age , RollNo : $rollNo ";
  }
}

void main(List<String> args) {
  var myList = <Student>[
    Student(name: "Arslan", age: 21, rollNo: 5),
    Student(name: "Mannan", age: 11, rollNo: 4),
    Student(name: "Hannan", age: 14, rollNo: 7),
    Student(name: "Rizwan", age: 24, rollNo: 1),
  ];
  print(myList);
  sort(myList, (o1, o2) => (o1 as Student).age > (o2 as Student).age);
  print(myList);
}

void sort(List<Object> list, Compareable compare) {
  for (int i = 0; i < list.length; i++) {
    for (int j = 0; j < list.length - i - 1; j++) {
      if (compare(list[j], list[j + 1])) {
        var temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}

// iss mai simply mainy ik sort ka dynamic function banaya hai jis mai mai apni list k requirment k base py har index py store variable ko sort krva skta hoo

