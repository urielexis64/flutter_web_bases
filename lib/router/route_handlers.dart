import 'package:fluro/fluro.dart';
import 'package:flutter_application_1/ui/views/counter_provider_view.dart';
import 'package:flutter_application_1/ui/views/counter_view.dart';
import 'package:flutter_application_1/ui/views/view_404.dart';

// Handlers
final counterHandler = Handler(handlerFunc: (context, params) {
  int base = int.tryParse(params['base']?.first ?? '') ?? 5;
  return CounterView(base: base);
});

final providerHandler = Handler(handlerFunc: (context, params) {
  int base = int.tryParse(params['q']?.first ?? '') ?? 5;
  return CounterProviderView(base: base);
});

final dashboardUserHandler = Handler(handlerFunc: (context, params) {
  print(params);
  return View404();
});

final pageNotFound = Handler(handlerFunc: (context, params) => View404());
