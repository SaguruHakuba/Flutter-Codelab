import 'dart:math';

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return new Circle(2);
    if (type == 'square') return new Square(2);
    // To trigger exception, don't implement a check for 'triangle'.
    throw 'Can\'t create $type.';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

class Triangle implements Shape {
  final num side;
  Triangle(this.side);
  num get area => pow(side, 2) / 2;
}

main() {
  try {
    print(new Shape('circle').area);
    print(new Shape('square').area);
    print(new Shape('triangle').area);
  } catch (err) {
    print(err);
  }
}