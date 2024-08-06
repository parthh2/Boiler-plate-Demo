import '../main.dart';
import 'flavor_config.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.dev,
    baseUrl: "https://api.printful.com/",
  );
  mainDelegate();
}
