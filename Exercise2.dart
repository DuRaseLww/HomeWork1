import 'dart:math';

abstract class Shape {
  void area();

  void perimeter();
}

class Circle extends Shape {
  double _radius;

  Circle(this._radius);

  double get radius {
    return _radius;
  }

  void area() {
    double result = 3.14 * pow(_radius, 2);
    print("Площадь круга равна: $result");
  }

  void perimeter() {
    double result = 2 * 3.14 * _radius;
    print("Периметр круга равен: $result");
  }
}

class Rectangle extends Shape {
  double _lenght;
  double _width;

  Rectangle(this._lenght, this._width);

  double get lenght {
    return _lenght;
  }

  double get width {
    return _width;
  }

  void area() {
    double result;
    result = _width * lenght;
    print("Площадь прямоугольника равна: $result");
  }

  void perimeter() {
    double result;
    result = 2 * (_width + _lenght);
    print("Периметр прямоугольника равен: $result");
  }
}

class Triangle extends Shape {
  double _sideOne;
  double _sideTwo;
  double _sideThree;

  Triangle(this._sideOne, this._sideTwo, this._sideThree);

  double get sideOne {
    return _sideOne;
  }

  double get sideTwo {
    return _sideTwo;
  }

  double get sideThree {
    return _sideThree;
  }

  void area() {
    double result;
    double pp;

    pp = (_sideOne + _sideTwo + _sideThree) / 2;
    result = sqrt(pp * (pp - _sideOne) * (pp - _sideTwo) * (pp - _sideThree));

    print("Площадь треугольника равна: $result");
  }

  void perimeter() {
    double result;
    result = _sideOne + _sideTwo + sideThree;
    print("Периметр треугольника равна: $result");
  }
}

void main() {
  Shape circle = Circle(9.1);
  Shape rectangle = Rectangle(1.2, 24.5);
  Shape triangle = Triangle(7.48, 9.0, 5.0);

  var list = [circle, rectangle, triangle];

  for (Shape shape in list) {
    shape.area();
    shape.perimeter();
  }
}