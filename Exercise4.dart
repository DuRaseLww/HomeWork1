abstract class Vehicle {
  void drive();
  void stop();
}

class Car extends Vehicle {
  int _speed;
  String _color;
  bool _engineStatus = false;

  Car(this._speed, this._color, this._engineStatus) {
    if(this._speed >= 140) {
      print("Превышение скорости! Сбавьте скорость!");
    }
  }

  int get getSpeed {
    return _speed;
  }

  set setSpeed(int speed) {
    this._speed = speed;
  }

  String get getColor {
    return _color;
  }

  set setColor(String color) {
    this._color = color;
  }

  void drive() {
    _engineStatus = true;
    print("$_color автомобиль в движении. Скорость $_speed");
  }

  void stop() {
    _speed = 0;
    print("$_color автомобиль остановлен. Скорость $_speed");
    _engineStatus = false;
    print("Автомобиль заглушен");
  }
}

class Bicycle extends Vehicle {
  int _speed = 0;
  String _color;
  bool engineStatus;

  Bicycle(this._color, this.engineStatus);

  void drive() {
    print("$_color велосипед в движении. Скорость $_speed");
  }

  void stop() {
    _speed = 0;
    print("$_color велосипед остановлен. Скорость $_speed");
  }
}

void main() {
  Car car = Car(150, "Зеленый", true);
  
  car.drive();
}