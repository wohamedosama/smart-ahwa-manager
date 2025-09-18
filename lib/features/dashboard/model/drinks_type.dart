abstract class DrinkType {
  String get drinkName;
}

class Tea extends DrinkType {
  @override
  String get drinkName => 'shai';
}

class MintTea extends DrinkType {
  @override
  String get drinkName => 'mint shai';
}

class Turkish extends DrinkType {
  @override
  String get drinkName => 'Turkish coffee';
}

class Hibiscus extends DrinkType {
  @override
  String get drinkName => ' hibiscus tea';
}
