
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
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'Time for shorts and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }
}