import 'package:flutter/material.dart';
import 'package:student_table_task/presentation/router/app_router_names.dart';
import 'package:student_table_task/presentation/screens/user/home_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {

      case AppRouterNames.rHomeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      
      default:
        return null;
    }
  }
}
