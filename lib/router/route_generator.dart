import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/pages/counter_page.dart';
import 'package:flutter_application_1/ui/pages/counter_provider_page.dart';
import 'package:flutter_application_1/ui/pages/page_404.dart';

class RouteGenerator {
  static Route<dynamic> generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(CounterPage(), '/stateful');
      case '/provider':
        return _fadeRoute(CounterProviderPage(), '/provider');
      default:
        return _fadeRoute(Page404(), '/404');
    }
  }

  static PageRoute _fadeRoute(Widget child, String route) {
    return PageRouteBuilder(
      settings: RouteSettings(name: route),
      pageBuilder: (_, __, ___) => child,
      transitionDuration: Duration(milliseconds: 300),
      transitionsBuilder: (_, Animation<double> animation, __, ___) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }
}
