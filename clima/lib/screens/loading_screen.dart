import 'dart:convert';
import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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
    Location l = new Location();
    await l.getCurrentLocation();
    fetchData(l.latitude, l.longtitude);
  }
  //fetching data from the api 
  void fetchData(latt, long)async{
    var API_KEY = "535cf9b6acf1f0d03df38b416d23c7d2";
   http.Response res = await http.get(Uri.parse("api.openweathermap.org/data/2.5/weather?lat=${latt}&lon=${long}&appid=${API_KEY}"));
    if(res.statusCode == 200){
      var data = jsonDecode(res.body);
    print(data);}
    else throw "Error while fetching data";
  }
  @override
  Widget build(BuildContext context) {
    print("All the widget are built");
    
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {

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
