import 'package:beer_app/core/network/auth_interceptor.dart';
import 'package:beer_app/core/network/network_client.dart';
import 'package:beer_app/data/repositories/auth_repository.dart';
import 'package:beer_app/data/repositories/beer_repository.dart';
import 'package:beer_app/data/services/auth_service.dart';
import 'package:beer_app/data/services/beer_service.dart';
import 'package:beer_app/data/services/shared_preferences_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DependenciesWidget extends StatelessWidget {
  DependenciesWidget({
    required this.networkClient,
    required this.child,
    super.key,
  }) {
    authService = AuthService(networkClient: networkClient);
    sharedPreferencesService = SharedPreferencesService();
    // Add an authentication to the network client
    networkClient.addInterceptor(
      AuthInterceptor(
        sharedPreferencesService: sharedPreferencesService,
        authService: authService,
        dio: networkClient.dio,
      ).authInterceptor,
    );
  }

  final NetworkClient networkClient;
  final Widget child;

  late final AuthService authService;
  late final SharedPreferencesService sharedPreferencesService;
  late final BeerService beerService;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthRepository(
            authService: authService,
            sharedPreferencesService: sharedPreferencesService,
          ),
        ),
      ],
      child: child,
    );
  }
}
