import 'package:fluro/fluro.dart';
import 'route_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/',
        handler: counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful/:base',
        handler: counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful',
        handler: counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/provider',
        handler: providerHandler, transitionType: TransitionType.fadeIn);
    router.define('/dashboard/users/:userId/:roleId',
        handler: dashboardUserHandler, transitionType: TransitionType.fadeIn);
    router.notFoundHandler = pageNotFound;
  }
}
