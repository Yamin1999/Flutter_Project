import 'package:flutter/material.dart';
import 'package:weatherforecast/screens/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weatherforecast/services/weather.dart';



class LoadingScreen extends StatefulWidget {

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override

  void initState() {
    super.initState();
    getLocation();

  }

  void getLocation() async
  {

   var newdecodedata =  await WeatherModel().locationWeatherData();

     Navigator.push(context, MaterialPageRoute(builder: (context)
    {
    return LocationScreen(newdecodedata);
     }
    ));
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
        child:       Center(
          child: SpinKitDoubleBounce(
            color: Colors.white,
          ),
        ),
      ),
      );
  }
}