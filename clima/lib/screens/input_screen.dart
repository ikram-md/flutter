import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';
import '../services/weather.dart';
import '../screens/location_screen.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  //
  TextEditingController _controller;
  WeatherModel weather = new WeatherModel();
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    Widget textBox(String val) {
      return Text("City name $val");
    }

    return Scaffold(
      body: Container(
        color: Color(0xff3B185F),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _controller,
                  onSubmitted: (String value) async {
                    var openWeather = await weather.getCityWeather(value);
                    print(openWeather);
                    var name = openWeather['name'];
                    print(name);
                    var desc = openWeather['weather'][0]['description'];
                    var temp = openWeather['main']['temp'] - 273.15;
                    var country = openWeather['sys']['country'];
                    var cityPage = Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LocationScreen(name: name,temp: temp,desc: desc,country: country,);
                    }));
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter the name of the city ',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
