// mixin Cart {
//   int wheels = 2;
// }

// mixin subCart {
//   int wheels = 4;
// }

// class Animal {
//   String name = "Horse";
// }

// class Lion extends Animal with Cart, subCart {
//   String name = "Lion";
// }

// void main(List<String> args) {
//   Lion lion = Lion();
//   print(lion.wheels); // just print the subCart Variable Value
// }

// the Lion class is mixing in both Cart and subCart. Since subCart is the last mixin, its wheels property (which is 4) overrides the wheels property from Cart (which is 2). Therefore, when you print lion.wheels, the value 4 from subCart gets printed.

// Another Example to handle this  type of problem

mixin Cart {
  int get cartWheels => 2; // Define a getter for wheels in Cart
}

mixin subCart {
  int get subCartWheels => 4; // Define a getter for wheels in subCart
}

class Animal {
  String name = "Horse";
}

class Lion extends Animal with Cart, subCart {
  String name = "Lion";

  // Methods to access wheels from both mixins
  int getCartWheels() => cartWheels;
  int getSubCartWheels() => subCartWheels;
}

void main(List<String> args) {
  Lion lion = Lion();
  print("Cart Wheels: ${lion.getCartWheels()}"); // Prints 2 (from Cart)
  print(
      "SubCart Wheels: ${lion.getSubCartWheels()}"); // Prints 4 (from subCart)
}


// Accessing the Mixins:

// In the Lion class, two methods are provided to access the values from each mixin:
// getCartWheels() to access the cartWheels from the Cart mixin.
// getSubCartWheels() to access the subCartWheels from the subCart mixin.