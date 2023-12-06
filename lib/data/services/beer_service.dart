import 'package:beer_app/core/network/network_client.dart';
import 'package:beer_app/data/models/dto/beers_result_dto.dart';
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
      print(e);
      return null;
    }
  }
}
