import 'package:beer_app/data/models/view/beer.dart';
import 'package:beer_app/l10n/l10n.dart';
import 'package:beer_app/overview/cubit/beer_filter_cubit.dart';
import 'package:beer_app/overview/cubit/beer_list_cubit.dart';
import 'package:beer_app/overview/view/overview_list_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              BeerListCubitCubit(beerRepository: context.read())..loadBeers(),
        ),
        BlocProvider(
          create: (context) => BeerFilterCubit(),
        ),
      ],
      child: const OverviewView(),
    );
  }
}

class OverviewView extends StatelessWidget {
  const OverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.overviewAppBarTitle,
        ),
      ),
      body: BlocBuilder<BeerListCubitCubit, BeerListCubitState>(
        builder: (context, listState) {
          return listState.maybeWhen(
            beers: (unfilteredBeers) {
              return Column(
                children: [
                  const OverviewFilterSelection(),
                  Expanded(
                    child: OverviewBeerFilter(
                      unfilteredBeers: unfilteredBeers,
                      child: (filteredBeers) {
                        return RefreshIndicator(
                          onRefresh: () =>
                              context.read<BeerListCubitCubit>().loadBeers(),
                          child: ListView.builder(
                            itemCount: filteredBeers.length,
                            itemBuilder: (context, index) {
                              final beer = filteredBeers[index];
                              return OverviewListTitle(
                                beer: beer,
                                onTap: () {
                                  context.go(
                                    '/detail/${beer.id}',
                                    extra: context.read<BeerListCubitCubit>(),
                                  );
                                },
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
            error: () {
              return const Center(
                child: Text('Something went wrong'),
              );
            },
            orElse: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          );
        },
      ),
    );
  }
}

class OverviewFilterSelection extends StatelessWidget {
  const OverviewFilterSelection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<BeerFilterCubit, BeerFilterState>(
      builder: (context, state) {
        return SegmentedButton<BeerFilterEvent>(
          segments: <ButtonSegment<BeerFilterEvent>>[
            ButtonSegment<BeerFilterEvent>(
              value: BeerFilterEvent.all,
              label: Text(l10n.overviewFilterSelectionAll),
              icon: const Icon(Icons.list),
            ),
            ButtonSegment<BeerFilterEvent>(
              value: BeerFilterEvent.rated,
              label: Text(l10n.overviewFilterSelectionRatedOnly),
              icon: const Icon(Icons.rate_review),
            ),
          ],
          selected: <BeerFilterEvent>{
            state.when(
              all: () => BeerFilterEvent.all,
              rated: () => BeerFilterEvent.rated,
            ),
          },
          onSelectionChanged: (Set<BeerFilterEvent> newSelection) {
            context.read<BeerFilterCubit>().filterChanged(newSelection.first);
          },
        );
      },
    );
  }
}

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
