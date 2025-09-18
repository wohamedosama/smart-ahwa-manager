import 'package:flutter/material.dart';
import 'package:smart_ahwa_manager/features/dashboard/model/drinks_type.dart';

class DrinkDropMenu extends StatelessWidget {
  const DrinkDropMenu({
    super.key,
    required this.value,
    required this.onChanged,
  });
  final DrinkType value;
  final ValueChanged<DrinkType?> onChanged;

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        label: Text('Choose Your Drink Type '),
        border: OutlineInputBorder(),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<DrinkType>(
          value: value,
          items: DrinkType.values
              .map(
                (drink) => DropdownMenuItem<DrinkType>(
                  value: drink,
                  child: Text(drink.drinkName),
                ),
              )
              .toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
