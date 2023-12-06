import 'package:beer_app/data/models/view/beer.dart';
import 'package:beer_app/data/repositories/beer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beer_list_cubit.freezed.dart';

class BeerListCubitCubit extends Cubit<BeerListCubitState> {
  BeerListCubitCubit({required this.beerRepository}) : super(const _Initial());

  final BeerRepository beerRepository;

  Future<void> loadBeers() async {
    emit(const _Loading());
    final beersResult = await beerRepository.fetchBeers();
    if (beersResult != null) {
      emit(_Beers(beersResult.beers));
    } else {
      emit(const _Error());
    }
  }
}

@freezed
class BeerListCubitState with _$BeerListCubitState {
  const factory BeerListCubitState.initial() = _Initial;
  const factory BeerListCubitState.loading() = _Loading;
  const factory BeerListCubitState.beers(List<Beer> beers) = _Beers;
  const factory BeerListCubitState.error() = _Error;
}
