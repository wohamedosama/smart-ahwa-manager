import 'package:flutter/material.dart';
import 'package:smart_ahwa_manager/core/routes/routes.dart';
import 'package:smart_ahwa_manager/features/dashboard/views/screens/add_order_screen.dart';
import 'package:smart_ahwa_manager/features/dashboard/views/screens/dashboard_screen.dart';
import 'package:smart_ahwa_manager/features/report/views/screens/report_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.dashboard:
        return MaterialPageRoute(builder: (context) => const DashboardScreen());
      case Routes.addOrder:
        return MaterialPageRoute(builder: (context) => const AddOrderScreen());
      case Routes.report:
        return MaterialPageRoute(builder: (context) => const ReportScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route found ${settings.name}')),
          ),
        );
    }
  }
}
