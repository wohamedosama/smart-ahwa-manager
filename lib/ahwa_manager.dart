import 'package:flutter/material.dart';
import 'package:smart_ahwa_manager/core/routes/app_router.dart';
import 'package:smart_ahwa_manager/core/routes/routes.dart';

class AhwaManager extends StatelessWidget {
  const AhwaManager({super.key, required this.appRouter});

  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ahwa Manager',
      initialRoute: Routes.dashboard,
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
