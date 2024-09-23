// Accessing Superclass Members

class Vehicle {
  int speed = 0;

  void drive() {
    print("Driving at $speed km/h");
  }
}

// Mixin that can only be applied to classes that extend Vehicle
mixin Turbo on Vehicle {
  void activateTurbo() {
    speed += 50;
    print("Turbo activated! New speed: $speed km/h");
  }
}

class Car extends Vehicle with Turbo {}

void main() {
  Car car = Car();
  car.drive(); // From Vehicle, initially 0 km/h
  car.activateTurbo(); // From Turbo mixin, increases speed
  car.drive(); // Now driving at the new speed (50 km/h)
}


// Explanation:

// The Turbo mixin can only be applied to classes that extend Vehicle.
// The mixin modifies the speed property from the Vehicle class and adds new functionality (activateTurbo).
// The Car class extends Vehicle and mixes in Turbo, which can access and modify the speed property.