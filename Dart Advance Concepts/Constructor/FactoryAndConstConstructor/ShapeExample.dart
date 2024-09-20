abstract class Shape {
  Shape._();

  factory Shape(Shapes shap) {
    return switch (shap) {
      Shapes.triangle => Triangle._(2, 3),
      Shapes.squre => Squre._(3),
    };
  }
}

class Triangle extends Shape {
  int a;
  int b;

  Triangle._(this.a, this.b) : super._();

  void CalculateArea(int x, int y) {
    print("The Area of this Rectangel is :${x * y / 2}");
  }
}

class Squre extends Shape {
  int a;

  Squre._(this.a) : super._();
  void CalculateArea(int x) {
    print("The Area of this Squre is :${x * x}");
  }
}

enum Shapes { triangle, squre }
