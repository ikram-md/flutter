import 'package:clima/screens/city_screen.dart';
import 'package:clima/utilities/day_card.dart';
import 'package:clima/utilities/weather_card.dart';
import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';
import '../services/weather.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen(
      {this.temp,
      this.name,
      this.desc,
      this.country,
      this.sunrise,
      this.sunset});
  final temp;
  final name;
  final desc;
  final sunrise;
  final sunset;
  final country;
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  void initState() {
    // TODO: implement initState
    print(widget.desc);
  }

  @override
  Widget build(BuildContext context) {
    WeatherModel myWeather = new WeatherModel();
    return Scaffold(
      body: Container(
        color: Color(0xff2A0944),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Text(
                            "${widget.name}, ${widget.country}",
                            style: TextStyle(
                                fontSize: 42, fontWeight: FontWeight.w800),
                          ),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> CityScreen()));
                            }, child: Text("City Weather"))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            '${widget.temp.ceil()}',
                            style: kConditionTextStyle,
                          ),
                          Text(
                            myWeather.getWeatherIcon(widget.temp.ceil() + 275),
                            style: kTempTextStyle,
                          ),
                        ],
                      ),
                      Text(
                        '${widget.desc}',
                        style: TextStyle(fontSize: 24),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('18°'),
                          Text('Wind k/h'),
                          Text('0.53 bm'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Sunrise"),
                        Text("Sunset"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Today",
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            WeatherCard(
                              weatherIcon: '💧',
                            ),
                            WeatherCard(
                              weatherIcon: '💧',
                            ),
                            WeatherCard(
                              weatherIcon: '💧',
                            ),
                            WeatherCard(
                              weatherIcon: '💧',
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            DayCard(),
                            DayCard(),
                            DayCard(),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
