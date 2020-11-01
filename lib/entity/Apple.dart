import 'package:lab1/entity/Fruit.dart';

class Apple extends Fruit {
  Color _color;
  bool isAPhone;

  Apple(this._color) : super("");

  Apple.iPhone(this._color, this.isAPhone) : super("Apple iPhone");

  @override
  String toString() {
    return 'Apple{name : ,_color: $_color, isAPhone: $isAPhone}';
  }
}

enum Color { red, green, yellow }
