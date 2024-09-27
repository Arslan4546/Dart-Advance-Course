mixin class Animal {
  int legs = 4;
}


mixin class Vehicle on Car {
  int wheels = 4;
}
// we cannot use on with the mixin class


