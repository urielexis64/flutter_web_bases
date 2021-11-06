import 'package:flutter/material.dart';
import 'package:flutter_application_1/locator.dart';
import 'package:flutter_application_1/router/route_generator.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/services/navigation_service.dart';
import 'package:flutter_application_1/ui/layout/main_layout_page.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RutasApp',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(child: child ?? CircularProgressIndicator());
      },
    );
  }
}
