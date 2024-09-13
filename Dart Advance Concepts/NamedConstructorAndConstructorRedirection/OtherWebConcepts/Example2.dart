// ==> Example 2: Named Constructor In Dart

// In this example below, there is class Mobile with three properties name, color, and price. The class has one method display which prints out the values of the three properties. We also have an object of the class Mobile called mobile. There is also constructor Mobile which takes all the three properties as parameters. Named constructor Mobile.namedConstructor is used to create an object of the class Mobile with name, color and optional price. The default value of the price is 0. If the price is not passed, then the default value is used.

// class Mobile {
//   String? name;
//   String? color;
//   int? price;

//   Mobile(this.name, this.color, this.price);
//   // here Mobile() is a named constructor
//   Mobile.namedConstructor(this.name, this.color, [this.price = 0]);

//   void displayMobileDetails() {
//     print("Mobile name: $name.");
//     print("Mobile color: $color.");
//     print("Mobile price: $price");
//   }
// }

// void main() {
//   var mobile1 = Mobile("Samsung", "Black", 20000);
//   mobile1.displayMobileDetails();
//   var mobile2 = Mobile.namedConstructor("Apple", "White");
//   mobile2.displayMobileDetails();
// }


// ==> Show Output
// Mobile name: Samsung.
// Mobile color: Black.
// Mobile price: 20000
// Mobile name: Apple.
// Mobile color: White.
// Mobile price: 0