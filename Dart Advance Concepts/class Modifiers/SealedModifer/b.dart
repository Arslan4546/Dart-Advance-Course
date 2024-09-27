import 'a.dart';

class Car extends Vehicle {}

class Truck implements Vehicle {}

class Bicycle extends Vehicle {}

// ERROR: Can't be instantiated.
Vehicle myVehicle = Vehicle();

// Subclasses can be instantiated.
Vehicle myCar = Car();

String getVehicleSound(Vehicle vehicle) {
  // ERROR: The switch is missing the Bicycle subtype or a default case.
  return switch (vehicle) {
    Car() => 'vroom',
    Truck() => 'VROOOOMM',
    Bicycle() => 'bicycle',
  };
}
// it means you cannot create the object of the sealed class but create the objecct of sealed subtype class and also cannot extends and implements the sealed class with other classes
