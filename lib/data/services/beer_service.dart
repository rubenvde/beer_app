import 'dart:developer';

import 'package:beer_app/core/network/network_client.dart';
import 'package:beer_app/data/models/dto/beer_result_dto.dart';
import 'package:beer_app/data/models/dto/beers_result_dto.dart';
import 'package:beer_app/data/models/view/beer_result.dart';
import 'package:beer_app/data/models/view/beers_result.dart';

class BeerService {
  BeerService({required this.networkClient});
  final NetworkClient networkClient;
  Future<BeersResult?> fetchBeers() async {
    try {
      final response = await networkClient.get('/beers');
      return BeersResult.fromBeersResultDTO(
        BeersResultDTO.fromJson(response.data as Map<String, dynamic>),
      );
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  Future<BeerResult?> fetchBeerById(String id) async {
    try {
      final response = await networkClient.get('/beers/$id');
      return BeerResult.fromBeerResultDTO(
        BeerResultDTO.fromJson(response.data as Map<String, dynamic>),
      );
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  Future<void> updateRating(String id, int rating) async {
    try {
      await networkClient.put('/beers/$id', {'rating': rating});
    } catch (e) {
      log(e.toString());
    }
  }
}
