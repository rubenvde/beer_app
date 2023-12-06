import 'package:beer_app/detail/cubit/beer_details_cubit.dart';
import 'package:beer_app/detail/view/detail_container_page.dart';
import 'package:beer_app/l10n/l10n.dart';
import 'package:beer_app/overview/cubit/beer_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    required this.beerId,
    required this.beerListCubitCubit,
    super.key,
  });

  final String beerId;
  final BeerListCubitCubit beerListCubitCubit;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BeerDetailsCubit(beerRepository: context.read())
            ..fetchBeerById(beerId),
        ),
        BlocProvider.value(value: beerListCubitCubit),
      ],
      child: const DetailView(),
    );
  }
}

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<BeerDetailsCubit, BeerDetailsState>(
          builder: (context, state) {
            return Text(
              state.maybeMap(
                result: (result) => result.beer.name,
                orElse: () => l10n.detailUnknownBeerAppBarTitle,
              ),
            );
          },
        ),
      ),
      body: BlocBuilder<BeerDetailsCubit, BeerDetailsState>(
        builder: (context, state) {
          return state.maybeMap(
            result: (result) => DetailContainerPage(beer: result.beer),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
