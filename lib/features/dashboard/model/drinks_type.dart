enum DrinkType {
  tea('shai'),
  mintTea('mint shai'),
  turkish('Turkish coffee'),
  hibiscus('hibiscus tea');

  const DrinkType(this.drinkName);

  final String drinkName;
}
