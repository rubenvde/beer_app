import 'package:beer_app/data/models/view/beer.dart';
import 'package:beer_app/data/repositories/beer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beer_details_cubit.freezed.dart';

class BeerDetailsCubit extends Cubit<BeerDetailsState> {
  BeerDetailsCubit({required this.beerRepository}) : super(const _Initial());

  final BeerRepository beerRepository;

  Future<void> fetchBeerById(String id) async {
    emit(const _Loading());
    final result = await beerRepository.fetchBeerById(id);
    if (result != null) {
      emit(_Result(result.beer));
    } else {
      emit(const _Error());
    }
  }
}

@freezed
class BeerDetailsState with _$BeerDetailsState {
  const factory BeerDetailsState.initial() = _Initial;
  const factory BeerDetailsState.loading() = _Loading;
  const factory BeerDetailsState.result(Beer beer) = _Result;
  const factory BeerDetailsState.error() = _Error;
}
