import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/services/geolocation/geolocator.dart';

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
        title: Text('Geolicator Demostration'),
      ),
      body: GeolocationWidget(),
    );
  }
}

class GeolocationWidget extends StatefulWidget {
  final GeolocatorImplementation geolocator = GeolocatorImplementation();

  @override
  _GeolocationWidgetState createState() => _GeolocationWidgetState();
}

class _GeolocationWidgetState extends State<GeolocationWidget> {
  String myLocation = "My location";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(myLocation),
        SizedBox(
          height: 50.0,
        ),
        ElevatedButton(
          onPressed: () async {
            double longitude;
            double latitude;
            Position currentLocation =
                await widget.geolocator.getCurrentLocation();

            longitude = currentLocation.longitude;
            latitude = currentLocation.latitude;

            myLocation = "Altitude: $longitude - Latitude: $latitude";
            setState(() {

            });
          },
          child: Text("Get Location"),
        ),
      ],
    );
  }
}
