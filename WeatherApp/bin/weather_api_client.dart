import 'dart:convert';

import 'package:http/http.dart' as http;

import 'weather.dart';

class WeatherApiCLient {
  // all API requests should be made to a specific URL
  // that identifies the MetaWeather API. So the first thing
  // that we want to do is to type:
  static const baseUrl = 'https://www.metaweather.com/api';

  Future<int> getLocationId(String city) async {
    final locationUrl = Uri.parse('$baseUrl/location/search/?query=$city');

    final locationResponse = await http.get(locationUrl);

    // Our code throws exception and thus calling code can handle it with
    // try-catch block
    if (locationResponse.statusCode != 200) {
      throw Exception('Error getting locationId for city');
    }

    // if the status code was 200, then we need to extract
    // the location ID from the response data
    final locationJson = jsonDecode(locationResponse.body) as List;
    return locationJson.first['woeid'] as int;
  }

  Future<Weather> fetchWeather(int locationId) async {
    final weatherUrl = Uri.parse('$baseUrl/location/$locationId');
    final weatherResponse = await http.get(weatherUrl);
    if (weatherResponse.statusCode != 200) {
      throw Exception('Error getting weather for location: $locationId');
    }
    print(weatherResponse.body);
    final weatherJson = jsonDecode(weatherResponse.body);
    return Weather.fromJson(weatherJson);
  }

  Future<Weather> getWeather(String city) async {
    final locationId = await getLocationId(city);
    return fetchWeather(locationId);
  }
}
