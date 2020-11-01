import 'package:lab1/entity/Fruit.dart';

class Banana extends Fruit {
  num _weight;
  Ripeness _ripeness;

  Banana(this._weight, name) : super(name) {
    this._ripeness = Ripeness.ripe;
  }

  Banana.withRipenessInfo(this._weight, this._ripeness, name) : super(name);

  @override
  String toString() {
    return 'Banana{_weight: $_weight, ripeness: $_ripeness}';
  }

  Banana operator +(Banana otherBanana) {
    return Banana(this._weight + otherBanana._weight, "Banana");
  }
}

enum Ripeness { unripe, ripe }
