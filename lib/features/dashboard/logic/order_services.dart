import 'package:smart_ahwa_manager/features/dashboard/model/orders_model.dart';

abstract class OrderServices {
  void addOrder(OrdersModel orderModel);
  List<OrdersModel> getAllPendingOrders();
  void isCompletes(String customerId);
  List<OrdersModel> gatAllOrders();
}

class Orders implements OrderServices {
  final List<OrdersModel> orders = [];
  int nextOrderId = 1;
  @override
  void addOrder(OrdersModel orderModel) {
    if (orderModel.id.isEmpty) {
      orderModel = OrdersModel(
        id: (nextOrderId++).toString(),
        name: orderModel.name,
        drinkType: orderModel.drinkType,
        isCompleted: orderModel.isCompleted,
        speicalInsturcation: orderModel.speicalInsturcation,
      );
    }
    orders.add(orderModel);
  }

  @override
  List<OrdersModel> gatAllOrders() {
    return List.unmodifiable(orders);
  }

  @override
  List<OrdersModel> getAllPendingOrders() {
    final List<OrdersModel> pendingOrders = orders
        .where((order) => !order.isCompleted)
        .toList();
    return pendingOrders;
  }

  @override
  void isCompletes(String orderId) {
    final orderIndex = orders.indexWhere((order) => order.id == orderId);
    if (orderIndex != -1) {
      orders[orderIndex].completeOrder();
    }
  }
}
