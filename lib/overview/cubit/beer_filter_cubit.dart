import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beer_filter_cubit.freezed.dart';

class BeerFilterCubit extends Cubit<BeerFilterState> {
  BeerFilterCubit() : super(const _All());

  void filterChanged(BeerFilterEvent event) {
    switch (event) {
      case BeerFilterEvent.all:
        emit(const _All());
      case BeerFilterEvent.rated:
        emit(const _Rated());
    }
  }
}

enum BeerFilterEvent { all, rated }

@freezed
class BeerFilterState with _$BeerFilterState {
  const factory BeerFilterState.all() = _All;
  const factory BeerFilterState.rated() = _Rated;
}
