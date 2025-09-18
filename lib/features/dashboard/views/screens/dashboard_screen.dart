import 'package:flutter/material.dart';
import 'package:smart_ahwa_manager/core/helper/extension.dart';
import 'package:smart_ahwa_manager/core/routes/routes.dart';
import 'package:smart_ahwa_manager/features/dashboard/logic/order_services.dart';

import '../widgets/order_list_item.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final Orders orderService = Orders();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade400,
        title: Text('Dashboard'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.bar_chart_sharp),
            tooltip: 'Report',
            onPressed: () => context.pushNamed(Routes.report),
          ),
        ],
      ),
      body: Builder(
        builder: (context) {
          final pendingOrders = orderService.getAllPendingOrders();

          if (pendingOrders.isEmpty) {
            return Center(
              child: Text(
                'No pending orders !',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            );
          }

          return ListView.separated(
            itemCount: pendingOrders.length,
            separatorBuilder: (context, index) => const Divider(height: 1),
            itemBuilder: (context, index) {
              final order = pendingOrders[index];
              return OrderListItem(
                order: order,
                onMarkServed: () {
                  orderService.isCompleted(order.id);
                  setState(() {}); // Refresh the UI
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.pushNamed(Routes.addOrder),
        icon: const Icon(Icons.add, color: Colors.black),
        label: const Text('Add Order', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.brown.shade300,
      ),
    );
  }
}
