import 'package:beer_app/data/models/view/beer.dart';
import 'package:beer_app/overview/cubit/beer_filter_cubit.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OverviewBeerFilter extends StatelessWidget {
  const OverviewBeerFilter({
    required this.unfilteredBeers,
    required this.child,
    super.key,
  });

  final List<Beer> unfilteredBeers;
  final Widget Function(List<Beer>) child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BeerFilterCubit, BeerFilterState>(
      builder: (context, filterState) {
        return child(
          filterState
              .when(
                all: () => unfilteredBeers,
                rated: () => unfilteredBeers.where((beer) => beer.rating != 0),
              )
              .toList(),
        );
      },
    );
  }
}
