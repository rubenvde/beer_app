import 'package:beer_app/overview/view/overview_page.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static GoRoute overview({List<GoRoute> routes = const []}) {
    return GoRoute(
      path: '/',
      builder: (_, __) => const OverviewPage(),
      routes: routes,
    );
  }
}
