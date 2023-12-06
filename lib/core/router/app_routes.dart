import 'package:beer_app/overview/view/overview_page.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static GoRoute overview({List<GoRoute> routes = const []}) {
    return GoRoute(
      path: '/',
      builder: (_, __) => const OverviewPage(),
      routes: routes,
    );
  }

  static GoRoute loginError({List<GoRoute> routes = const []}) {
    return GoRoute(
      path: '/loginError',
      builder: (_, __) => Container(),
      routes: routes,
    );
  }
}
