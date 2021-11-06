import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:flutter_application_1/ui/views/counter_provider_view.dart';
import 'package:flutter_application_1/ui/views/counter_view.dart';
import 'package:flutter_application_1/ui/views/view_404.dart';

class RouteGenerator {
  static Route<dynamic> generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(CounterView(base: 5), '/stateful');
      case '/provider':
        return _fadeRoute(CounterProviderView(base: 5), '/provider');
      default:
        return _fadeRoute(View404(), '/404');
    }
  }

  static PageRoute _fadeRoute(Widget child, String route) {
    return PageRouteBuilder(
      settings: RouteSettings(name: route),
      pageBuilder: (_, __, ___) => child,
      transitionDuration: Duration(milliseconds: 300),
      transitionsBuilder: (_, Animation<double> animation, __, ___) {
        return kIsWeb
            ? FadeTransition(
                opacity: animation,
                child: child,
              )
            : ScaleTransition(
                scale: animation,
                child: child,
              );
      },
    );
  }
}
