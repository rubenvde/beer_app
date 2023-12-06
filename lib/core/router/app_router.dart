import 'package:beer_app/core/router/app_routes.dart';
import 'package:beer_app/data/repositories/auth_repository.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter({required this.authRepository});
  AuthRepository authRepository;
  late final routerConfig = GoRouter(
    routes: [
      AppRoutes.overview(
        routes: [
          AppRoutes.detail(),
        ],
      ),
      AppRoutes.loginError(),
    ],
    redirect: (context, state) async {
      if (await authRepository.isLoggedIn) {
        // No redirect is needed
        return null;
      } else {
        // Normally you would go to a seperate login screen
        // but we have the credentials hardcoded so let's try and login
        final isLoggedIn = await authRepository.login(
          '*****',
          '*****',
        );
        if (isLoggedIn) {
          // No redirect is needed
          return null;
        } else {
          return AppRoutes.loginError().path;
        }
      }
    },
  );
}
