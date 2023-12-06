import 'package:beer_app/overview/cubit/beer_list_cubit.dart';
import 'package:beer_app/overview/view/overview_list_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          BeerListCubitCubit(beerRepository: context.read())..loadBeers(),
      child: const OverviewView(),
    );
  }
}

class OverviewView extends StatelessWidget {
  const OverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Beer App',
        ),
      ),
      body: BlocBuilder<BeerListCubitCubit, BeerListCubitState>(
        builder: (context, state) {
          return state.maybeWhen(
            beers: (beers) {
              return ListView.builder(
                itemCount: beers.length,
                itemBuilder: (context, index) {
                  final beer = beers[index];
                  return OverviewListTitle(beer: beer);
                },
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
