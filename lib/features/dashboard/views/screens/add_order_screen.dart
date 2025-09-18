import 'package:flutter/material.dart';
import 'package:smart_ahwa_manager/features/dashboard/logic/order_services.dart';
import 'package:smart_ahwa_manager/features/dashboard/model/drinks_type.dart';
import 'package:smart_ahwa_manager/features/dashboard/model/orders_model.dart';
import 'package:smart_ahwa_manager/features/dashboard/views/widgets/custom_form_field.dart';
import 'package:smart_ahwa_manager/features/dashboard/views/widgets/drink_drop_menu.dart';

class AddOrderScreen extends StatefulWidget {
  const AddOrderScreen({super.key});

  @override
  State<AddOrderScreen> createState() => _AddOrderScreenState();
}

class _AddOrderScreenState extends State<AddOrderScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController instructionsController = TextEditingController();
  DrinkType _selectedDrink = DrinkType.tea;

  @override
  void dispose() {
    nameController.dispose();
    instructionsController.dispose();
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    final order = OrdersModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: nameController.text.trim(),
      drinkType: _selectedDrink,
      speicalInsturcation: instructionsController.text.trim(),
    );
    Orders().addOrder(order);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade400,

        title: Text('Add Order'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              CustomTextFormField(
                controller: nameController,
                label: 'Customer Name',
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DrinkDropMenu(
                value: _selectedDrink,
                onChanged: (DrinkType? value) {
                  setState(() {
                    _selectedDrink = value ?? DrinkType.tea;
                  });
                },
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                controller: instructionsController,
                label: 'Special Instructions',

                maxLines: 4,
              ),
              const SizedBox(height: 24),
              FilledButton.icon(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Colors.brown.shade400,
                  ),
                ),
                onPressed: _submit,
                icon: const Icon(Icons.check, color: Colors.black),
                label: const Text(
                  'Add Order',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
