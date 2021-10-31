import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'api/api_service_provider.dart';
import 'gram_spy_theme.dart';
import 'route/routes.dart';

void main() {
  runApp(const GramSpy());
}

class GramSpy extends StatelessWidget {
  const GramSpy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = GramSpyTheme.light();
    return ChangeNotifierProvider(
      create: (context) => APIService(),
      builder: (context, child) {
        return MaterialApp(
          title: 'GramSpy',
          theme: theme,
          initialRoute: RouteManager.homePage,
          onGenerateRoute: RouteManager.generateRoute,
        );
      },
    );
  }
}
