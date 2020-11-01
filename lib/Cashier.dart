class Cashier {
  String _name;
  int _age;
  int wage;

  static final Cashier _cashier = Cashier._internal("Default", 99, 99);

  Cashier._internal(this._name, this._age, this.wage);

  factory Cashier() {
    return _cashier;
  }
}
