// dynamic Function Execution
// Method 1
// iss mai ye horha hai k hum ny ik sort ka  dynamic fucntion banaya hai ta k koi bhi list aa jyee humm oss ko apni requirements k mutabiq sort kr skyn
// humm ny phly compareable ki typedef ban lee then hum ny bool ki 3 method global scope mai bna lyee ta k jab bhi sort ka function call ho tab calling k parameter mai bool ka fucntion call kr skyn  
// issi trah humm apni kissi bhi list ko kissi bhi value k according sort kr skty hain ye dynamic function ka sab sy bra benefit hai


// class Employee {
//   String name;
//   int age;
//   int grade;
//   int salary;

//   Employee(
//       {required this.name,
//       required this.age,
//       required this.grade,
//       required this.salary});

//   @override
//   String toString() {
//     return "Name : $name, Age : $age, Grade : $grade, Salary : $salary \n";
//   }
// }

// typedef Comparable = bool Function(Object, Object);

// final employees = [
//   Employee(name: "Arslan", age: 34, grade: 19, salary: 500000),
//   Employee(name: "Mannan", age: 14, grade: 13, salary: 100000),
//   Employee(name: "Hannan", age: 31, grade: 15, salary: 300000),
//   Employee(name: "Rizwan", age: 24, grade: 17, salary: 400000),
// ];

// void main(List<String> args) {
//   print(employees);
//   sort(employees, isAgeBasedSort);
//   print(employees);
//   sort(employees, isGradeBasedSort);
//   print(employees);
//   sort(employees, isSalaryBasedSort);
//   print(employees);
// }

// bool isAgeBasedSort(Object o1, Object o2) {
//   return (o1 as Employee).age > (o2 as Employee).age;
// }

// bool isSalaryBasedSort(Object o1, Object o2) {
//   return (o1 as Employee).salary > (o2 as Employee).salary;
// }

// bool isGradeBasedSort(Object o1, Object o2) {
//   return (o1 as Employee).grade > (o2 as Employee).grade;
// }

// void sort(List<Object> list, Comparable compareable) {
//   for (int i = 0; i < list.length; i++) {
//     for (int j = 0; j < list.length - i - 1; j++) {
//       if (compareable(list[j], list[j + 1])) {
//         var temp = list[j];
//         list[j] = list[j + 1];
//         list[j + 1] = temp;
//       }
//     }
//   }
// }




// // Method 2
// but iss mai hmm ny just function ko global scope sy main functon k scope mai ly aye hain or just same as calling krvai hai sort ko


// class Employee {
//   String name;
//   int age;
//   int grade;
//   int salary;

//   Employee(
//       {required this.name,
//       required this.age,
//       required this.grade,
//       required this.salary});

//   @override
//   String toString() {
//     return "Name : $name, Age : $age, Grade : $grade, Salary : $salary \n";
//   }
// }

// typedef Comparable = bool Function(Object, Object);

// final employees = [
//   Employee(name: "Arslan", age: 34, grade: 19, salary: 500000),
//   Employee(name: "Mannan", age: 14, grade: 13, salary: 100000),
//   Employee(name: "Hannan", age: 31, grade: 15, salary: 300000),
//   Employee(name: "Rizwan", age: 24, grade: 17, salary: 400000),
// ];

// void main(List<String> args) {
//   bool isAgeBasedSort(Object o1, Object o2) {
//     return (o1 as Employee).age > (o2 as Employee).age;
//   }

//   bool isSalaryBasedSort(Object o1, Object o2) {
//     return (o1 as Employee).salary > (o2 as Employee).salary;
//   }

//   bool isGradeBasedSort(Object o1, Object o2) {
//     return (o1 as Employee).grade > (o2 as Employee).grade;
//   }

//   print(employees);
//   sort(employees, isAgeBasedSort);
//   print(employees);
//   sort(employees, isGradeBasedSort);
//   print(employees);
//   sort(employees, isSalaryBasedSort);
//   print(employees);
// }

// void sort(List<Object> list, Comparable compareable) {
//   for (int i = 0; i < list.length; i++) {
//     for (int j = 0; j < list.length - i - 1; j++) {
//       if (compareable(list[j], list[j + 1])) {
//         var temp = list[j];
//         list[j] = list[j + 1];
//         list[j + 1] = temp;
//       }
//     }
//   }
// }




// Method 3
// iss mai hmm ny extra bool k function ko eleminate kr dia hai just sort ki calling mai direcct implementation kr dee hai or ye humm tab use krty hain jab humain just one time call krnna ho fucntion ko

// class Employee {
//   String name;
//   int age;
//   int grade;
//   int salary;

//   Employee(
//       {required this.name,
//       required this.age,
//       required this.grade,
//       required this.salary});

//   @override
//   String toString() {
//     return "Name : $name, Age : $age, Grade : $grade, Salary : $salary \n";
//   }
// }

// typedef Comparable = bool Function(Object, Object);

// final employees = [
//   Employee(name: "Arslan", age: 34, grade: 19, salary: 500000),
//   Employee(name: "Mannan", age: 14, grade: 13, salary: 100000),
//   Employee(name: "Hannan", age: 31, grade: 15, salary: 300000),
//   Employee(name: "Rizwan", age: 24, grade: 17, salary: 400000),
// ];

// void main(List<String> args) {
//   print(employees);

//   sort(employees, (Object o1, Object o2) {
//     return (o1 as Employee).age > (o2 as Employee).age;
//   });

//   print(employees);

//   sort(employees, (Object o1, Object o2) {
//     return (o1 as Employee).grade > (o2 as Employee).grade;
//   });

//   print(employees);

//   sort(employees, (Object o1, Object o2) {
//     return (o1 as Employee).salary > (o2 as Employee).salary;
//   });

//   print(employees);
// }

// void sort(List<Object> list, Comparable compareable) {
//   for (int i = 0; i < list.length; i++) {
//     for (int j = 0; j < list.length - i - 1; j++) {
//       if (compareable(list[j], list[j + 1])) {
//         var temp = list[j];
//         list[j] = list[j + 1];
//         list[j + 1] = temp;
//       }
//     }
//   }
// }



// // Method 4
// ye bhi same uper waly program ki trah hai but ye  humm tab use krty hain jab sara kuch hmara ik he line mai aa rha ho to iss ko one line fucntion, inline function , lambda expression bhi kehty hain


// class Employee {
//   String name;
//   int age;
//   int grade;
//   int salary;

//   Employee(
//       {required this.name,
//       required this.age,
//       required this.grade,
//       required this.salary});

//   @override
//   String toString() {
//     return "Name : $name, Age : $age, Grade : $grade, Salary : $salary \n";
//   }
// }

// typedef Comparable = bool Function(Object, Object);

// final employees = [
//   Employee(name: "Arslan", age: 34, grade: 19, salary: 500000),
//   Employee(name: "Mannan", age: 14, grade: 13, salary: 100000),
//   Employee(name: "Hannan", age: 31, grade: 15, salary: 300000),
//   Employee(name: "Rizwan", age: 24, grade: 17, salary: 400000),
// ];

// void main(List<String> args) {
//   print(employees);

//   sort(employees, (o1, o2) => (o1 as Employee).age > (o2 as Employee).age);

//   print(employees);

//   sort(employees, (o1, o2) => (o1 as Employee).grade > (o2 as Employee).grade);

//   print(employees);

//   sort(
//       employees, (o1, o2) => (o1 as Employee).salary > (o2 as Employee).salary);

//   print(employees);
// }

// void sort(List<Object> list, Comparable compareable) {
//   for (int i = 0; i < list.length; i++) {
//     for (int j = 0; j < list.length - i - 1; j++) {
//       if (compareable(list[j], list[j + 1])) {
//         var temp = list[j];
//         list[j] = list[j + 1];
//         list[j + 1] = temp;
//       }
//     }
//   }
// }
