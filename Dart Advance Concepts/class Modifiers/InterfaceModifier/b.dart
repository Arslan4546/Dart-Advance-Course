import 'a.dart';

// Can be constructed.
Vehicle myVehicle = Vehicle();

// ERROR: Can't be inherited.
class Car extends Vehicle {
  int passengers = 4;
  // ...
}

class MockVehicle implements Vehicle {
  // Can be implemented.
  @override
  void moveForward(int meters) {
    // ...
  }
}
  // it means you cannot extends or implements the final class but also create that class objeCreateTimerHandler