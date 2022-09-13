import 'package:flutter/material.dart';
import 'package:weatherforecast/contants.dart';
import 'city_screen.dart';
import 'package:weatherforecast/services/weather.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen(this.decodedata);
  final decodedata;
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {

  WeatherModel newmodel = WeatherModel();
  String cityName;
  int condition;
  int temperature;
  String weatherMessage;
  String weatherIcon;
  double feelsLike;
  int pressure;
  int himudity;

  @override
  void initState() {
    updatedata(widget.decodedata);
    super.initState();
  }

  void updatedata(dynamic weatherdata)
  {
    if(weatherdata == null)
      {
        setState(() {
        cityName = '';
        temperature = 0;
        weatherMessage = 'Unable to get WeatherData!';
        weatherIcon = 'Error';
        });
      }
else {
      setState(() {
        cityName = weatherdata['name'];
        condition = weatherdata['weather'][0]['id'];
        double temp = weatherdata['main']['temp'];
        temperature = temp.toInt();
        weatherMessage = "${newmodel.getMessage(temperature)} in $cityName!";
        weatherIcon = newmodel.getWeatherIcon(condition);
        feelsLike = weatherdata['main']['feels_like'];
        pressure = weatherdata['main']['pressure'];
        himudity = weatherdata['main']['humidity'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () async {

                     var datadecode = await newmodel.locationWeatherData();
                     updatedata(datadecode);
                    },
                    child: Icon(
                      Icons.near_me,
                      size: 50.0,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)
                      {
                        return CityScreen();
                      }
                      ));
                    },
                    child: Icon(
                      Icons.location_city,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      temperature.toString()+'°',
                      style: kTempTextStyle,
                    ),
                    Text(
                      weatherIcon,
                      style: kConditionTextStyle,
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Feels Like : ${feelsLike.toInt()}'+'°' ,
                  textAlign: TextAlign.left,
                  style: kMessageTextStyle,

                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Pressure: ${(pressure/1013).toStringAsFixed(2)} atm',
                  textAlign: TextAlign.left,
                  style: kMessageTextStyle,

                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Himudity: $himudity%',
                  textAlign: TextAlign.left,
                  style: kMessageTextStyle,

                ),
              ),

              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Text(
                  weatherMessage,
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
