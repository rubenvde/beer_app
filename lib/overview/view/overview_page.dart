import 'package:beer_app/data/models/view/beer.dart';
import 'package:beer_app/l10n/l10n.dart';
import 'package:beer_app/overview/cubit/beer_filter_cubit.dart';
import 'package:beer_app/overview/cubit/beer_list_cubit.dart';
import 'package:beer_app/overview/view/overview_beer_filter.dart';
import 'package:beer_app/overview/view/overview_filter_selection.dart';
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
              BeerListCubit(beerRepository: context.read())..loadBeers(),
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
      body: BlocBuilder<BeerListCubit, BeerListCubitState>(
        builder: (context, listState) {
          return listState.maybeWhen(
            beers: (unfilteredBeers) {
              return Column(
                children: [
                  const OverviewFilterSelection(),
                  OverviewResultList(unfilteredBeers: unfilteredBeers),
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

class OverviewResultList extends StatelessWidget {
  const OverviewResultList({required this.unfilteredBeers, super.key});

  final List<Beer> unfilteredBeers;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OverviewBeerFilter(
        unfilteredBeers: unfilteredBeers,
        child: (filteredBeers) {
          return RefreshIndicator(
            onRefresh: () => context.read<BeerListCubit>().loadBeers(),
            child: ListView.builder(
              itemCount: filteredBeers.length,
              itemBuilder: (context, index) {
                final beer = filteredBeers[index];
                return OverviewListTitle(
                  beer: beer,
                  onTap: () {
                    context.go(
                      '/detail/${beer.id}',
                      extra: context.read<BeerListCubit>(),
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
