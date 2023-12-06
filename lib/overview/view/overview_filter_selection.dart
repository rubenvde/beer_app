import 'package:beer_app/l10n/l10n.dart';
import 'package:beer_app/overview/cubit/beer_filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OverviewFilterSelection extends StatelessWidget {
  const OverviewFilterSelection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<BeerFilterCubit, BeerFilterState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: SegmentedButton<BeerFilterEvent>(
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
          ),
        );
      },
    );
  }
}
