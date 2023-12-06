import 'package:beer_app/data/models/dto/beer_dto.dart';
import 'package:beer_app/data/models/view/brewery.dart';

class Beer {
  Beer({
    required this.id,
    required this.name,
    required this.rating,
    required this.thumbImageUrl,
    required this.imageUrl,
    required this.brewery,
  });

  factory Beer.fromBeerDTO(BeerDTO beerDTO) {
    return Beer(
      id: beerDTO.id,
      name: beerDTO.name,
      rating: beerDTO.rating,
      thumbImageUrl: beerDTO.thumbImageUrl,
      imageUrl: beerDTO.imageUrl,
      brewery: Brewery.fromBreweryDTO(beerDTO.brewery),
    );
  }

  final String id;
  final String name;
  final int rating;
  final String thumbImageUrl;
  final String imageUrl;
  final Brewery brewery;
}
