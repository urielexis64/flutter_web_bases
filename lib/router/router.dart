import 'package:fluro/fluro.dart';
import 'package:flutter_application_1/ui/views/counter_provider_view.dart';
import 'package:flutter_application_1/ui/views/counter_view.dart';
import 'package:flutter_application_1/ui/views/view_404.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/provider',
        handler: _providerHandler, transitionType: TransitionType.fadeIn);
    router.notFoundHandler = _pageNotFound;
  }

  // Handlers
  static Handler _counterHandler =
      Handler(handlerFunc: (context, params) => CounterView());
  static Handler _providerHandler =
      Handler(handlerFunc: (context, params) => CounterProviderView());
  static Handler _pageNotFound =
      Handler(handlerFunc: (context, params) => View404());
}
