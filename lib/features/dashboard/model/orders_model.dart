// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:smart_ahwa_manager/features/dashboard/model/drinks_type.dart';

class OrdersModel {
  final String id;
  final String name;
  final DrinkType drinkType;
  final String speicalInsturcation;
  bool isCompleted;
  OrdersModel({
    required this.id,
    required this.name,
    required this.drinkType,
    this.speicalInsturcation = '',
    this.isCompleted = false,
  });
  void completeOrder() {
    isCompleted = true;
  }
}
