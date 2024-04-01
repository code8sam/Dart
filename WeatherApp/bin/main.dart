import 'weather_api_client.dart';

Future<void> main(List<String> arguments) async {
  // And the first thing we want to do is to add a defensive check,
  // and make sure that we call this with at least one argument.
  // So here we can type:

  if (arguments.length != 1) {
    print('Syntax: dart WeatherApp/bin/main.dart <city>');
    return;
  }
  final city = arguments.first;

  final api = WeatherApiCLient();
  // final locationId = await api.getLocationId(city);
  // print(locationId);
  final weather = api.getWeather(city);
}
