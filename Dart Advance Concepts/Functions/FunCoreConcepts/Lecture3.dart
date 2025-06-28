class Employee {
  String name;
  int age;
  int grade;
  int salary;

  Employee({
    required this.name,
    required this.age,
    required this.grade,
    required this.salary,
  });

  @override
  String toString() {
    return "Name : $name, Age : $age, Grade : $grade, Salary : $salary \n";
  }
}

final employees = [
  Employee(name: "Arslan", age: 34, grade: 19, salary: 500000),
  Employee(name: "Mannan", age: 14, grade: 13, salary: 100000),
  Employee(name: "Hannan", age: 31, grade: 15, salary: 300000),
  Employee(name: "Rizwan", age: 24, grade: 17, salary: 400000),
];

void sortedEmployeesAge(List<Employee> employees) {
  for (int i = 0; i < employees.length; i++) {
    for (int j = 0; j < employees.length - i - 1; j++) {
      if (employees[j].age > employees[j + 1].age) {
        Employee temp = employees[j];
        employees[j] = employees[j + 1];
        employees[j + 1] = temp;
      }
    }
  }
}

void main(List<String> args) {
  print(employees.length - 1);
  print(employees);

  sortedEmployeesAge(employees);
  print(employees);
}


// iss uper waly complete program mai hun ny ik classs bani hai or uss mai kuch instancs lyee hian or un ko constructor mai required rakhwa dia hai or ik toString() name ka override method bna dia hai jo k constructor ko call krty he string return krva dy ga jo hum ny uss string method mai return krvai hoggee 
// or as simple hum ny ik globally list ly lee hai or uss mai values store krva dee hain or aisy he bubble sort apply kr dia hai jiss sy hmari list mai pri totally ages sort ho jyn gee


