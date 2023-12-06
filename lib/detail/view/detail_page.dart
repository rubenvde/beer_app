import 'package:beer_app/data/models/view/beer.dart';
import 'package:beer_app/detail/cubit/beer_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({required this.beerId, super.key});

  final String beerId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BeerDetailsCubit(beerRepository: context.read())
        ..fetchBeerById(beerId),
      child: const DetailView(),
    );
  }
}

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<BeerDetailsCubit, BeerDetailsState>(
          builder: (context, state) {
            return Text(
              state.maybeMap(
                result: (result) => result.beer.name,
                orElse: () => 'Beer',
              ),
            );
          },
        ),
      ),
      body: BlocBuilder<BeerDetailsCubit, BeerDetailsState>(
        builder: (context, state) {
          return state.maybeMap(
            result: (result) => DetailContainer(beer: result.beer),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}

class DetailContainer extends StatelessWidget {
  const DetailContainer({required this.beer, super.key});

  final Beer beer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          beer.imageUrl,
          width: MediaQuery.of(context).size.width,
        ),
        Text(beer.name),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(beer.brewery.name),
            const SizedBox(width: 8),
            Column(
              children: [
                Text(beer.brewery.address),
                Text(beer.brewery.city),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
