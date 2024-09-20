import 'ShapeExample.dart';
import 'FactoryConsBorderExample.dart';

void main(List<String> args) {
  Border no = Border(Borders.noBorder);
  Border single = Border(Borders.singleBorder);
  Border withb = Border(Borders.doubleBorder);
  Border threeD = Border(Borders.threeDBorder);

  print(no.borderType);
  print(single.borderType);
  print(withb.borderType);
  print(threeD.borderType);

  // Shape s1 = Shape(Shapes.squre);
  // Shape s2 = Shape(Shapes.triangle);
  // // ager mai aisy krta hon to ye mjy squre and triangle ki class mai by method ko access ni kryny dy but mai koi or method apnaoo ga iss k lyee
  // Triangle calculate = Shape(Shapes.triangle) as Triangle;
  // calculate.CalculateArea(12, 34);

  /// ab mai in methods ko acces kr skta hoon or in mai arguments bhhi set kr skta hoon
}
