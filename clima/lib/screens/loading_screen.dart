import 'package:clima/screens/location_screen.dart';
import '../services/weather.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
//this code will execute at the birth of the widget
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    WeatherModel model = new WeatherModel();
    var openWeather = await model.fetchOpenWeatherData();
    var rawData = await model.fetchSunriseSunsetData();
    var location = rawData['location']['time'][0];
    var sunrise =
        location['sunrise']['time'].toString().split("T")[1].substring(0, 5);
    var sunset =
        location['sunset']['time'].toString().split("T")[1].substring(0, 5);
    var name = openWeather['name'];
    var desc = openWeather['weather'][0]['description'];
    var temp = openWeather['main']['temp'] - 273.15;
    var country = openWeather['sys']['country'];
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
          temp: temp,
          name: name,
          desc: desc,
          country: country,
          sunrise: sunrise,
          sunset: sunset);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SpinKitFoldingCube(
            itemBuilder: (BuildContext context, int index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: index.isEven ? Colors.blue : Colors.white,
                ),
              );
            },
          ),
        ));
  }

  @override
  void deactivate() {
    super.deactivate();
    print("The widget is going to die");
  }
}
