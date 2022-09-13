
import 'package:weatherforecast/services/location.dart';
import 'package:weatherforecast/services/networking.dart';

const apiKey = 'c080f2b9849d38a93213a2c21514f7ef';
class WeatherModel {

  Future<dynamic> cityWeatherData(String cityName) async{

    GetDataInfo newdata = GetDataInfo('https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric');

    var newdecodedata = await newdata.getdata();

    return newdecodedata;
  }

  Future<dynamic> locationWeatherData() async{
    Location newLocation = Location();
    await newLocation.getCurrentLocation();

    GetDataInfo newdata = GetDataInfo('https://api.openweathermap.org/data/2.5/weather?lat=${newLocation.
    latitude}&lon=${newLocation.longitude}&appid=$apiKey&units=metric');

    var newdecodedata = await newdata.getdata();

    return newdecodedata;
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