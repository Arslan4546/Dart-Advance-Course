mixin Cart {
  int wheels = 2;
}

mixin subCart {
  int wheels = 4;
}

class Animal {
  String name = "Horse";
}

class Lion extends Animal with Cart, subCart {
  String name = "Lion";
}

void main(List<String> args) {
  Cart cart = Lion();
  print(cart.wheels);
}

// Here’s a breakdown of the issue:

// The Lion class uses both Cart and subCart.
// Since subCart is the last mixin applied, it overrides any properties that are common in Cart and subCart (i.e., wheels).
// Even though you create a Cart reference, you're still dealing with the full Lion object, which includes both mixins, and subCart's wheels (which is 4) takes precedence.

