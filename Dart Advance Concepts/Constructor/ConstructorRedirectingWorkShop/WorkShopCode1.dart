void main(List<String> args) {
  // var map = <String ,dynamic> {
  //   'id' : 12,
  //   'name' : 'Ali',
  //   'fees' : 12.43
  // };

  // int id = map['id']  ?? 12;

  // Teacher t = Teacher(12, 'Ali', 12312.123);
  // var t1 = Teacher.fixedSalaray(1, 'Usman');
  // print(t1);

  Teacher t2 = Teacher.id(4);
  print(t2);
}

class Teacher {
  int? id;
  String? name;
  num? salary;
  Teacher(this.id, this.name, this.salary);
  // Teacher(this.salary,this.id,this.name, );

  Teacher.fromMap(Map<String, dynamic> map);

  Teacher.fixedSalaray(this.id, this.name) : salary = 1212312.45123;

  @override
  String toString() {
    return 'salary = $salary , name = $name , id = $id';
  }

  Teacher.name({required int teacherId, required String teacherName})
    : this(teacherId, teacherName, 1231.123);
  Teacher.id(int teacherId)
    : this.name(teacherId: teacherId, teacherName: 'Hassan');
}
