import 'dart:convert';

import 'package:weather_app/model/weather_consult.dart';
import 'package:http/http.dart' as http;

class WeatherConsultor {
  final String _API_KEY = "&appid=141f461e15daeae27c55943edf72003d";
  final String _URL = "http://api.openweathermap.org/data/2.5/weather?";
  final String unit = "&units=metric";

  // Devuelve un objeto WeatherConsult con la información
  // de la consulta o un null si algo ha ido mal.
  Future<WeatherConsult> getTimeByCoordinates(
      String latitude, String longitude) async {
    final String query = "lat=$latitude&lon=$longitude";
    final String url = "$_URL$query$unit$_API_KEY";
    final http.Response response = await http.get(url);

    if (response.statusCode != 200) {
      return null;
    }

    return responseToWeatherConsult(response);
  }

  Future<WeatherConsult> getTimeByCityName(String cityName) async {
    final String url = "${_URL}q=$cityName$_API_KEY$unit";
    final http.Response response = await http.get(url);

    if (response.statusCode != 200) {
      return null;
    }

    return responseToWeatherConsult(response);
  }

  WeatherConsult responseToWeatherConsult(http.Response response) {
    Map<String, dynamic> data = jsonDecode(response.body);
    final double temp_max = data["main"]["temp_max"] / 1.0;
    final double temp_min = data["main"]["temp_min"] / 1.0;
    final double temp_current = data["main"]["temp"] / 1.0;
    final double wind_speed = data["wind"]["speed"] / 1.0;
    final double humedity = data["main"]["humidity"] / 1.0;
    final String weather = data["weather"][0]["main"];
    final String city =
        (data["name"] != "" ? data["name"] : "Lugar desconocido");

    return WeatherConsult(
        temp_max, temp_min, temp_current, wind_speed, humedity, city, weather);
  }
}
