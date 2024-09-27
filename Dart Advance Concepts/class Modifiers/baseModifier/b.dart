import 'a.dart';

// Can be constructed.
Vehicle myVehicle = Vehicle();

// Can be extended.
base class Car extends Vehicle {
  int passengers = 4;
  // ...
}

// ERROR: Can't be implemented.
base class MockVehicle implements Vehicle {
  @override
  void moveForward() {
    // ...
  }
}
// it means you cannot implements the base class but can create object and extends with other class
