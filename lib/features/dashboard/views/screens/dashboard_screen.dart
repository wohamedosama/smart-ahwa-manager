import 'package:flutter/material.dart';
import 'package:smart_ahwa_manager/core/helper/extension.dart';
import 'package:smart_ahwa_manager/core/routes/routes.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade400,
        title: Text('Dashboard'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.bar_chart),
            tooltip: 'Report',
            onPressed: () => context.pushNamed(Routes.report),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return null;
        },
        separatorBuilder: (context, index) =>
            Divider(color: Colors.brown.shade200),
        itemCount: 10,
      ),
    );
  }
}
