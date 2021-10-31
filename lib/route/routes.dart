import 'package:flutter/material.dart';
import '../screens/form.dart';
import '../screens/response_page.dart';

class RouteManager {
  static const String homePage = '/';
  static const String responsePage = '/response_page';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => const FormPage());
      case responsePage:
        return MaterialPageRoute(builder: (context) => const ResponsePage());
      default:
        throw const FormatException('No route found');
    }
  }
}
