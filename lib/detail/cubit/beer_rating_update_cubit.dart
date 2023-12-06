import 'package:beer_app/data/models/view/beer.dart';
import 'package:beer_app/data/repositories/beer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BeerRatingUpdateCubit extends Cubit<int> {
  BeerRatingUpdateCubit({required this.beerRepository, required this.beer})
      : super(beer.rating);

  final Beer beer;
  final BeerRepository beerRepository;

  void updateRating(int rating) {
    beerRepository.updateRating(beer.id, rating);
    emit(rating);
  }
}
