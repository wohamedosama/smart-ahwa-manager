import 'package:flutter/material.dart';
import 'package:smart_ahwa_manager/core/helper/extension.dart';
import 'package:smart_ahwa_manager/core/routes/routes.dart';

class AddOrderScreen extends StatelessWidget {
  const AddOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.bar_chart),
            tooltip: 'Report',
            onPressed: () => context.pushNamed(Routes.report),
          ),
        ],
      ),
      body: Column(children: []),
    );
  }
}
