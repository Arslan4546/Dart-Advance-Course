class Vehicle {
  final int wheels;
  final int gear;

  Vehicle(this.gear, this.wheels);

  Vehicle operator +(Vehicle other) {
    return Vehicle(wheels + other.wheels, gear + other.gear);
  }

  @override
  String toString() {
    return "Wheels : $wheels , Grears : $gear";
  }
}

class Truck extends Vehicle {
  Truck(super.gear, super.wheels);

  Truck operator +(covariant Vehicle other) {
    return Truck(wheels - other.wheels, gear - other.gear);
  }
}

void main(List<String> args) {
  Vehicle v1 = Vehicle(2, 4);
  Vehicle v2 = Vehicle(2, 4);
  var v3 = v1 + v2;
  print(v3);
}


// ye operator ki explicitly example hai or ager humm ik class mai koi operator ko overload krny k method bnaty hain to humain to ager hum uss class ko dosri class sy inherit krty hian to humain ager operator overriding krni hai  to converient ka keyword sath lagana pry ga otherwise error dy ga compile time

