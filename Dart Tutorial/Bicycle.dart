void main() {
  final bike = Bicycle(0, 4);
  print('Bike speed is ${bike._speed} km/h');
  bike.applyBreak(10);
  bike.speedUp(100);
  print(bike);
}

class Bicycle {
  int cadence;
  int _speed = 0;
  int gear;
  Bicycle(this.cadence, this.gear);
  
  int get speed => _speed;
  
  void applyBreak(int decrement) {
    _speed -= decrement;
  }
  
  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';
}