import 'dart:math';

class Rectangle {
  int width;
  int height;
  Point origin;
  
  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});
  
  @override
  String toString() {
    return 'Origin: (${origin.x}, ${origin.y}), Width: $width, Height: $height';
  }
}

main() {
  print(Rectangle());
  print(Rectangle(width: 20));
  print(Rectangle(origin: const Point(10,10)));
  print(Rectangle(origin: const Point(2,2), width: 5, height: 6));
} // Included main() to suppress uncaught exception.