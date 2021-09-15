import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:geolocator/geolocator.dart';
 const BASE_URI = "https://api.met.no/weatherapi/sunrise/2.0/.json?";
 const API_KEY = '2410f34afd545edb11c749def8ee3756';
const URI = "https://api.openweathermap.org/data/2.5/weather?";

class WeatherModel {
    Future getLocation()async{
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      return position;
    }
    Future fetchSunriseSunsetData()async{
    var position = await getLocation();
    var now = DateTime.now().toString().split(" ")[0];
    Networking netHelper = new Networking(url: "${BASE_URI}lat=${position.latitude}&lon=${position.longitude}&date=${now}&offset=-01:00");
    var rawData = await netHelper.getData();
    return rawData;
  }
  Future fetchOpenWeatherData()async{
     var position = await getLocation();
    Networking netHelper = new Networking(url: "${URI}lat=${position.latitude}&lon=${position.longitude}&appid=${API_KEY}");
    var openWeather = await netHelper.getData();
    return openWeather;
  }
  Future getCityWeather(String cityName)async{
    Networking net = new Networking(url: "https://api.openweathermap.org/data/2.5/weather?q=${cityName}&appid=${API_KEY}");
    var cityWeather = await net.getData();
    return cityWeather;
  }
  Future getHourlyCityWeather()async{
    var position = await getLocation();
    Networking net = new Networking(url : "https://api.openweathermap.org/data/2.5/onecall?lat=${position.latitude}&lon=${position.longitude}&exclude=current,minutely,alerts&appid=${API_KEY}");
    var hourlyData = await net.getData();
    return hourlyData;
  }
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}

// var rawData = await fetchSunriseSunsetData(position.latitude, position.longitude);
//     var location = rawData['location']['time'][0];
//     var sunrise = location['sunrise']['time'].toString().split("T")[1].substring(0,5);
//     var sunset = location['sunset']['time'].toString().split("T")[1].substring(0,5);
//   }
