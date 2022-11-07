import 'package:fluro/fluro.dart';
import 'package:url_sidebar_web/pages/responsive/init_page.dart';
import 'package:url_sidebar_web/pages/splash_screen.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static Handler splashHandler = Handler(
    handlerFunc: (context, Map<String, dynamic> params) => const SplashScreen(),
  );

  static Handler mainHandler = Handler(
    handlerFunc: (context, Map<String, dynamic> params) => InitPage(
      page: params['name'][0],
      extra: '',
    ),
  );

  static Handler mainHandler2 = Handler(
    handlerFunc: (context, Map<String, dynamic> params) => InitPage(
      page: params['name'][0],
      extra: params['extra'][0],
    ),
  );

  static void setupRouter() {
    router.define(
      '/',
      handler: splashHandler,
    );

    router.define(
      '/main/:name',
      handler: mainHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/main/:name/:extra',
      handler: mainHandler2,
      transitionType: TransitionType.fadeIn,
    );
  }
}
