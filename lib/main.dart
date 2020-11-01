import 'dart:collection';

import 'package:lab1/Cashier.dart';
import 'package:lab1/entity/Apple.dart';
import 'package:lab1/entity/Banana.dart';
import 'package:lab1/entity/Fruit.dart';
import 'package:meta/meta.dart';

void main() {
  print("Hello world\n");
  var apple = new Apple(Color.green);
  var banana = new Banana(1000, "Totally a simple banana");
  apple.toString();

  List<Fruit> fruits = new List();

  fruits.add(apple);

  fruits
    ..add(new Banana.withRipenessInfo(
        500, Ripeness.unripe, "Suspiciously lookin banana"))
    ..add(new Banana(1000, "Totally a banana"))
    ..add(new Apple.iPhone(Color.red, true));

  var nameToFruit = new HashMap();
  fruits.forEach((element) => nameToFruit[element.runtimeType] = element);
  nameToFruit.forEach((key, value) => print("$key"));
  print("\n\n\n");

  fruits.forEach((element) {
    print(element.toString());
  });

  fruits.forEach((element) => print(element.toString()));

  print(fruitTester()(apple));

  print("Singleton pattern factory constructor\n");
  var s1 = Cashier();
  var s2 = Cashier();
  print(identical(s1, s2));
  print(s1 == s2);

  print((banana + banana).toString());
}

Function fruitTester() {
  return (Fruit fruit2) => fruit2 is Fruit;
}

void reqPosPar(bool firstParam) {
  print(firstParam);
}

void unTypedPar(firstParam) {
  print(firstParam);
}

void namedPar({firstParam: int}) {
  print(firstParam);
}
