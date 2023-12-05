import 'package:beer_app/core/router/app_routes.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  late final routerConfig = GoRouter(
    routes: [
      AppRoutes.overview(),
    ],
  );
}
