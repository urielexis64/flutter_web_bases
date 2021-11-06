import 'package:fluro/fluro.dart';
import 'package:flutter_application_1/ui/views/counter_provider_view.dart';
import 'package:flutter_application_1/ui/views/counter_view.dart';
import 'package:flutter_application_1/ui/views/view_404.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful/:base',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/provider',
        handler: _providerHandler, transitionType: TransitionType.fadeIn);
    router.notFoundHandler = _pageNotFound;
  }

  // Handlers
  static Handler _counterHandler = Handler(handlerFunc: (context, params) {
    int base = int.tryParse(params['base']?.first ?? '') ?? 5;
    return CounterView(base: base);
  });

  static Handler _providerHandler = Handler(handlerFunc: (context, params) {
    int base = int.tryParse(params['q']?.first ?? '') ?? 5;
    return CounterProviderView(base: base);
  });

  static Handler _pageNotFound =
      Handler(handlerFunc: (context, params) => View404());
}
