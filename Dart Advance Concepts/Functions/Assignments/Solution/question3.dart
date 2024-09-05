// Create a class “City” associated with “Academy” and create
// well-defined objects using constructors with given scenarios.

// (i) Create the object with a constructor but independently initialize the
// values.

// (ii) create the object with the constructor and assign the values using
// the cascade operator.

// (iii) create the object with a constructor but initialize the value through
// helper methods.

class City {
  String name;
  String famousThing;

  City({required this.name, required this.famousThing});

  @override
  String toString() {
    return 'name: $name, Famous Thing: $famousThing';
  }
}

void main(List<String> args) {
  // method 1
  City city1 = City(name: "", famousThing: "");
  city1.name = "Multan";
  city1.famousThing = "Sohan Halva";
  print(city1);

// method 2
  City city2 = City(name: "", famousThing: "")
    ..name = "Khan Pur"
    ..famousThing = "Pery";
  print(city2);

// method 3
  City city3 = City(name: "", famousThing: "");
  city3.initializeCityData();
  print(city3);
}

extension CityHelper on City {
  // Helper method to initialize values
  void initializeCityData() {
    name = "Krachi";
    famousThing = "Nimko";
  }
}
