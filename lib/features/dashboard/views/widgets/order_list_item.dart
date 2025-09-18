import 'package:flutter/material.dart';
import 'package:smart_ahwa_manager/features/dashboard/model/orders_model.dart';

class OrderListItem extends StatelessWidget {
  final OrdersModel order;
  final VoidCallback onMarkServed;

  const OrderListItem({
    super.key,
    required this.order,
    required this.onMarkServed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(order.name.isNotEmpty ? order.name[0].toUpperCase() : '?'),
      ),
      title: Text('${order.name} • ${order.drinkType.drinkName}'),
      subtitle: order.speicalInsturcation.isEmpty
          ? null
          : Text(order.speicalInsturcation),
      trailing: IconButton(
        icon: const Icon(Icons.check_circle, color: Colors.green),
        tooltip: 'Mark served',
        onPressed: onMarkServed,
      ),
    );
  }
}
