import 'package:beer_app/data/models/dto/beers_result_dto.dart';
import 'package:beer_app/data/models/view/beer.dart';

class BeersResult {
  BeersResult({
    required this.beers,
  });
  factory BeersResult.fromBeersResultDTO(BeersResultDTO beersResultDTO) {
    return BeersResult(
      beers: beersResultDTO.data.map(Beer.fromBeerDTO).toList(),
    );
  }

  final List<Beer> beers;
}
