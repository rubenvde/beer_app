import 'package:beer_app/data/models/view/beer.dart';
import 'package:beer_app/data/repositories/beer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beer_list_cubit.freezed.dart';

class BeerListCubit extends Cubit<BeerListCubitState> {
  BeerListCubit({required this.beerRepository})
      : super(const BeerListCubitInitial());

  final BeerRepository beerRepository;

  Future<void> loadBeers() async {
    if (state is BeerListCubitInitial) {
      // Only emit loading state if we are in initial state
      emit(const BeerListCubitLoading());
    }
    final beersResult = await beerRepository.fetchBeers();
    if (beersResult != null) {
      emit(
        BeerListCubitBeers(
          beersResult.beers..sort((a, b) => a.name.compareTo(b.name)),
        ),
      );
    } else {
      emit(const BeerListCubitError());
    }
  }
}

@freezed
class BeerListCubitState with _$BeerListCubitState {
  const factory BeerListCubitState.initial() = BeerListCubitInitial;
  const factory BeerListCubitState.loading() = BeerListCubitLoading;
  const factory BeerListCubitState.beers(List<Beer> beers) = BeerListCubitBeers;
  const factory BeerListCubitState.error() = BeerListCubitError;
}
