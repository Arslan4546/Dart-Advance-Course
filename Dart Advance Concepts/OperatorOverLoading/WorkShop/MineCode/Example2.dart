class Vehicle {
  final int wheels;
  final int gear;

  Vehicle(this.gear, this.wheels);

  bool operator ==(covariant Vehicle other) {
    return wheels == other.wheels && gear == other.gear;
  }

  @override
  String toString() {
    return "Wheels : $wheels , Grears : $gear";
  }
}
// iss mai ye hia k == operator object ki class mai define hai or dart mai operator overloading hai he ni iss lyee humm same parameter type bnany k lyee converient ka keyword sath likhain gy wrna ye error dy dy ga converient k keyword basically humm type casting k lyee krty hian bas

