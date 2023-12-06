import 'package:beer_app/app/app.dart';
import 'package:beer_app/bootstrap.dart';
import 'package:beer_app/core/network/network_client.dart';
import 'package:beer_app/dependencies_widget.dart';

void main() {
  const baseUrl = 'https://beers.icapps-projects.com/api/v1';
  final networkClient = NetworkClient(baseUrl: baseUrl);
  bootstrap(
    () => DependenciesWidget(
      networkClient: networkClient,
      child: const App(),
    ),
  );
}
