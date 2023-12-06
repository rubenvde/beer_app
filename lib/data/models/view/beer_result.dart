import 'package:beer_app/data/models/dto/beer_result_dto.dart';
import 'package:beer_app/data/models/view/beer.dart';

class BeerResult {
  BeerResult({
    required this.beer,
  });
  factory BeerResult.fromBeerResultDTO(BeerResultDTO beerResultDTO) {
    return BeerResult(
      beer: Beer.fromBeerDTO(beerResultDTO.data),
    );
  }

  final Beer beer;
}
