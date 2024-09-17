// Returning Subclass Instances:
// A factory constructor can return an instance of a subclass, adding more flexibility in object creation.

class Animal {
  String name;

  Animal(this.name);

  // Factory constructor that returns a subclass based on a condition
  factory Animal.create(String type) {
    if (type == 'dog') {
      return Dog();
    } else if (type == 'cat') {
      return Cat();
    } else {
      return Animal('Unknown');
    }
  }
}

class Dog extends Animal {
  Dog() : super('Dog');
}

class Cat extends Animal {
  Cat() : super('Cat');
}

void main() {
  Animal animal1 = Animal.create('dog');
  Animal animal2 = Animal.create('cat');
  Animal animal3 = Animal.create('bird');

  print(animal1.name); // Output: Dog
  print(animal2.name); // Output: Cat
  print(animal3.name); // Output: Unknown
}
// Explanation:

// The Animal.create factory constructor returns different subclasses (Dog, Cat) depending on the input.
// This provides the flexibility to return different types of objects without the user needing to know the specifics of which class is being created.

// Summary:
// Factory constructors in Dart allow more flexibility because they can decide which instance to return (new, cached, or subclass).
// Generative constructors simply create a new instance each time they are called.
// Caching: Factory constructors are often used for caching instances (singleton pattern).
// Returning Subclasses: You can use factory constructors to return objects of subclasses, making your code more flexible and modular.
