typedef IsGreater = bool Function(Object,Object);

// typedef isGreater = bool Function();
// typedef isGreater1 = String Function();

void main(List<String> args) {
  var listOfStudents = <Student>[
    Student(1, 12.45),
    Student(2, 16.45),
    Student(6, 11.45),
    Student(3, 18.45),
    Student(7, 16.45),
    Student(9, 1.45),
  ];
  // print(listOfStudents);
  // sortFeeWise(listOfStudents);
  // print(listOfStudents);

sort(listOfStudents, sortFeesWise);
  
  sort(listOfStudents, (Object o1, Object o2) {
    return (o1 as Student).rollNo > (o2 as Student).rollNo;
  });
  sort(listOfStudents, (Object o1, Object o2) => (o1 as Student).rollNo > (o2 as Student).rollNo
  );
  sort(listOfStudents, (o1,o2) {
    return (o1 as Student).rollNo > (o2 as Student).rollNo;
  });
}

bool sortRollNoWise(Object o1, Object o2) {
  return (o1 as Student).rollNo > (o2 as Student).rollNo;
}

bool sortFeesWise(Object o1, Object o2) {
  return (o1 as Student).fees > (o2 as Student).fees;
}

void sort(List<Object> list, IsGreater isGreater) {
  for (var i = 0; i < list.length; i++) {
    for (var j = 0; j < list.length - 1; j++) {
      if (isGreater(list[j], list[j + 1])) {
        var temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}

//....rolNo sort
void sortRollNo(List<Student> list) {
  for (var i = 0; i < list.length; i++) {
    for (var j = 0; j < list.length - 1; j++) {
      if (list[j].rollNo > list[j + 1].rollNo) {
        var temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}

//....fees sort
void sortFeeWise(List<Student> list) {
  for (var i = 0; i < list.length; i++) {
    for (var j = 0; j < list.length - 1; j++) {
      if (list[j].fees > list[j + 1].fees) {
        var temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}

class Student {
  final int rollNo;
  final num fees;
  Student(this.rollNo, this.fees);

  @override
  String toString() {
    return 'rollNo = $rollNo , fees = $fees';
  }
}
