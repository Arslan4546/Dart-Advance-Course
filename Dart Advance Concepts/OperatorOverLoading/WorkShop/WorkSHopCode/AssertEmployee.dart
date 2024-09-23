class Employee {
  final String name;
  final int id;

  Employee(int employeeId, String employeeName)
      : assert(employeeId > 0, 'Id must be greater than zero'),
        assert(employeeName.isEmpty == false, 'Name must not b empty'),
        id = employeeId,
        name = employeeName;

  @override
  String toString() {
    return "Name : $name , ID : $id";
  }
}

void main(List<String> args) {
  Employee employee = Employee(12, "Arslan");
  print(employee);
  // ager condition satisfy hue  to ye run ho jyee ga wrna ager na huee to ye run time mai error dy dy ga or sidha ussi jaga py error dy ga jhan py codition unsatisfied hue the
}
