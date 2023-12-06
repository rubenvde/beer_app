import 'package:beer_app/data/models/view/beers_result.dart';
import 'package:beer_app/data/services/beer_service.dart';

class BeerRepository {
  BeerRepository({required this.beerService});
  final BeerService beerService;
  Future<BeersResult?> fetchBeers() => beerService.fetchBeers();
}
