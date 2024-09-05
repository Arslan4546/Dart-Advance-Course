// Assignment no 2. User Private Data members outside the class within the
// same file to experience how private data member works.

void main() {
  Person person = Person("Arslan", 25);

  // Accessing public data member
  print(person.publicName); // Output: Arslan

  // Accessing private data member - this will cause an error
  print(person
      ._age); // Error: The getter '_age' isn't defined for the class 'Person'.

  // Trying to modify private data member - this will also cause an error
  // person._age = 30;        // Error: The setter '_age' isn't defined for the class 'Person'.

  // You can only access private data through public methods
  print(person.getAge()); // Output: 25
}

class Person {
  // Public data member
  String publicName;

  // Private data member
  int _age;

  // Constructor
  Person(this.publicName, this._age);

  // Public method to access the private data member
  int getAge() {
    return _age;
  }

  // Public method to set a new value to the private data member
  void setAge(int age) {
    _age = age;
  }
}
