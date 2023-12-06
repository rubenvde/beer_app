import 'package:beer_app/data/models/dto/brewery_dto.dart';

class Brewery {
  Brewery({
    required this.id,
    required this.name,
    required this.address,
    required this.city,
    required this.country,
  });

  factory Brewery.fromBreweryDTO(BreweryDTO breweryDTO) {
    return Brewery(
      id: breweryDTO.id,
      name: breweryDTO.name,
      address: breweryDTO.address,
      city: breweryDTO.city,
      country: breweryDTO.country,
    );
  }

  final String id;
  final String name;
  final String address;
  final String city;
  final String country;
}
