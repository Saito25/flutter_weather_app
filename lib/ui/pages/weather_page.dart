import 'package:flutter/material.dart';

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather"),
      ),
      body: MyAppState(),
    );
  }
}

class MyAppState extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyAppState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding:
                                  EdgeInsets.only(left: 20.0, top: 20.0),
                                  child: Icon(
                                    Icons.update,
                                    color: Colors.white,
                                  )),
                              Padding(
                                  padding:
                                  EdgeInsets.only(right: 20.0, top: 20.0),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.0, top: 20.0),
                                    child: Text(
                                      "Ciudad",
                                      style: TextStyle(
                                          fontSize: 30.0,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.only(left: 20.0, top: 5.0),
                                    child: Text("Día, Mes, Número",
                                        style:
                                        TextStyle(color: Colors.white)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Text("Clima",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.white)),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 20.0, right: 50),
                                      child: Icon(
                                        Icons.wb_sunny,
                                        color: Colors.white,
                                        size: 70.0,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                EdgeInsets.only(left: 40.0, bottom: 40.0),
                                child: Text(
                                  "20º",
                                  style: TextStyle(
                                      fontSize: 80.0, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Icon(Icons.thermostat_sharp)],
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Temp mín",
                                      style: TextStyle(color: Colors.grey)),
                                  Text("15º")
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Icon(Icons.thermostat_outlined)],
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Temp máx",
                                      style: TextStyle(color: Colors.grey)),
                                  Text("25º")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Icon(Icons.cloud)],
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Humedad",
                                      style: TextStyle(color: Colors.grey)),
                                  Text("30%")
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Icon(Icons.west)],
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Viento",
                                      style: TextStyle(color: Colors.grey)),
                                  Text("13km/h")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
