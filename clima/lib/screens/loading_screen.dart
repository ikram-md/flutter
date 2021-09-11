
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

//this code will execute at the birth of the widget 
  @override
  void initState(){
    super.initState();
    getLocation();
  }
  void getLocation() async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    const API_KEY;
    var URI = "https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=${API_KEY}";
    //retreive the data
    Networking netHelper = new Networking(url: URI);
    var openWeather = await netHelper.getData();
    var name = openWeather['name'];
    var desc = openWeather['weather'][0]['description'];
    var temp = openWeather['main']['temp'] -  273.15;
    print("${name}-${desc}-${temp}, kelvin");
    fetchSunriseSunsetData(position.latitude, position.longitude);
  }
  //fetching data from the api 
  void fetchSunriseSunsetData(latt, long)async{
    var now = DateTime.now().toString().split(" ")[0];
    var URI = "https://api.met.no/weatherapi/sunrise/2.0/.json?lat=${latt}&lon=${long}&date=${now}&offset=-01:00";
    Networking netHelper = new Networking(url: URI);
    var rawData = await netHelper.getData();
    var location = rawData['location']['time'][0];
    var sunrise = location['sunrise']['time'].toString().split("T")[1].substring(0,5);
    var sunset = location['sunset']['time'].toString().split("T")[1].substring(0,5);
    print(sunset);
  }
  @override
  Widget build(BuildContext context) {
    print("All the widget are built");
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
  getLocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
   @override
  void deactivate(){
    super.deactivate();
    print("The widget is going to die");
  }
}
