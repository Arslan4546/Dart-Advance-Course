class Triangle {
  int triangleSize;
  Triangle({required this.triangleSize});
}

class Rectangle {
  int rectangleSize;
  Rectangle({required this.rectangleSize});
}

class Square {
  int squareSize;
  Square({required this.squareSize});
}

void main(List<String> args) {
  Triangle triangle = Triangle(triangleSize: 10);
  Rectangle rectangle = Rectangle(rectangleSize: 3);
  Square square = Square(squareSize: 5);

  var shape =
      square; // You can change this to 'triangle' or 'rectangle' for testing

  var result = switch (shape) {
    // Handle Square
    Square(squareSize: var s) when s > 0 =>
      "Square with size $s and area ${s * s}",

    // Handle Rectangle
    Rectangle(rectangleSize: var r) when r > 0 =>
      "Rectangle with size $r and area ${r * r}",

    // Handle Triangle
    Triangle(triangleSize: var t) when t > 0 =>
      "Triangle with size $t and area ${(t * t) / 2}",

    // Default case
    _ => "Unknown shape or invalid size",
  };

  print(result);
}
