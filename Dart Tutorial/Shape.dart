import 'dart:math';

abstract class Shape {
  num get area;
  num circular();
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
  num circular() => pi * radius * 2;
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
  num circular() => 4 * side;
}

Shape shapeFactory(String type) {
  if (type=='circle')	return Circle(3);
  if (type=='square')	return Square(2);
  throw 'cannot create $type.';
}

class circleMock implements Circle {
  num area;
  num radius;
  num circular() => 0;
}

main() {
//   final circle = Circle(3);
//   final square = Square(2);
  final circle = shapeFactory('circle');
  final square = shapeFactory('square');
  print('Circle Area: ${circle.area}');
  print('Circle Cirucular: ${circle.circular()}');
  print('Square Area: ${square.area}');
}