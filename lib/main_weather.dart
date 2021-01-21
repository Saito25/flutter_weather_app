import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/model/weather_consult.dart';
import 'package:weather_app/services/geolocation/geolocator.dart';
import 'package:weather_app/services/weather/weather_consultor.dart';

void main() {
  runApp(GeoApp());
}

class GeoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/': (context) => InitialPage()},
    );
  }
}

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Demostration'),
      ),
      body: GeolocationWidget(),
    );
  }
}

class GeolocationWidget extends StatefulWidget {
  final GeolocatorImplementation geolocator = GeolocatorImplementation();
  final WeatherConsultor weatherConsultor = WeatherConsultor();

  @override
  _GeolocationWidgetState createState() => _GeolocationWidgetState();
}

class _GeolocationWidgetState extends State<GeolocationWidget> {
  String myWeather = "My time";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(myWeather),
        SizedBox(
          height: 50.0,
        ),
        ElevatedButton(
          onPressed: () async {
            double longitude;
            double latitude;
            WeatherConsult weather;
            Position currentLocation =
                await widget.geolocator.getCurrentLocation();
            longitude = currentLocation.longitude;
            latitude = currentLocation.latitude;

            weather = await widget.weatherConsultor.getTimeByCoordinates(latitude.toString(), longitude.toString());
            //weather = await widget.weatherConsultor.getTimeByCityName("Algeciras");

            setState(() {
              myWeather = weather.temp_current.toString() + " " + weather.city;
            });
          },
          child: Text("Get Location"),
        ),
      ],
    );
  }
}
