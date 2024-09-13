class Student {
  int rollNo;
  String name;
  String address;
  String favoriteTeacher;

  // Main constructor
  Student({
    required this.rollNo,
    required this.name,
    required this.address,
    required this.favoriteTeacher,
  });

  // Constructor with just the teacher, which forwards to another constructor
  Student.withTeacher(String teacher)
      : this.withNameAndTeacher(
            "Unknown", teacher); // Sends to the next constructor

  // Constructor with the name and teacher, forwarding to the main constructor
  Student.withNameAndTeacher(String name, String teacher)
      : this(
            rollNo: 0,
            name: name,
            address: "Unknown",
            favoriteTeacher: teacher); // Redirects to the main constructor

  @override
  String toString() {
    return "Name: $name, Address: $address, RollNo: $rollNo, Favorite Teacher: $favoriteTeacher";
  }
}
