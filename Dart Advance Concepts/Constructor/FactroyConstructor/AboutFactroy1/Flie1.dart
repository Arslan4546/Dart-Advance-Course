//== > About Factory Constructor
//== > Code 1
class DB {
  static DB? _instance;

  // Private constructor
  DB._internal();

  // Public factory method to return the singleton instance
  factory DB() {
    if (_instance == null) {
      _instance = DB._internal();
    }
    return _instance!;
  }
}

void main(List<String> args) {
  // Accessing the singleton instance using the factory constructor
  DB db1 = DB();
  DB db2 = DB();

  // Verifying that both db1 and db2 point to the same instance
  print(db1 == db2); // Should print: true
}


// ==> Code 2
// class DB {
//   static DB? instance;

//   // Private constructor
//   DB._instance();

//   // Factory constructor that implements the singleton pattern
//   factory DB() {
//     return instance ??= DB._instance();
//   }
// }
