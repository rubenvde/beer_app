import 'package:beer_app/detail/view/detail_page.dart';
import 'package:beer_app/overview/cubit/beer_list_cubit.dart';
import 'package:beer_app/overview/view/overview_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static GoRoute overview({List<GoRoute> routes = const []}) {
    return GoRoute(
      path: '/',
      builder: (context, state) {
        return const OverviewPage();
      },
      routes: routes,
    );
  }

  static GoRoute detail({List<GoRoute> routes = const []}) {
    return GoRoute(
      path: 'detail/:id',
      builder: (context, state) {
        final beerId = state.pathParameters['id'];
        // If beerId is null, we can't go to the detail page so we go to the
        // overview page instead.
        if (beerId == null) overview(routes: routes);
        if (state.extra == null) overview(routes: routes);
        return DetailPage(
          beerId: beerId!,
          beerListCubitCubit: state.extra! as BeerListCubitCubit,
        );
      },
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
