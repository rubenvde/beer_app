import 'package:beer_app/data/models/view/beer.dart';
import 'package:beer_app/detail/cubit/beer_rating_update_cubit.dart';
import 'package:beer_app/overview/cubit/beer_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailContainerPage extends StatelessWidget {
  const DetailContainerPage({required this.beer, super.key});

  final Beer beer;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BeerRatingUpdateCubit(
        beerRepository: context.read(),
        beer: beer,
      ),
      child: DetailContainerView(beer: beer),
    );
  }
}

class DetailContainerView extends StatelessWidget {
  const DetailContainerView({required this.beer, super.key});

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
        BlocBuilder<BeerRatingUpdateCubit, int>(
          builder: (context, state) {
            return RatingBar.builder(
              initialRating: state.toDouble(),
              minRating: 1,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                context.read<BeerRatingUpdateCubit>().updateRating(
                      rating.toInt(),
                    );
                context.read<BeerListCubit>().loadBeers();
              },
            );
          },
        ),
      ],
    );
  }
}
