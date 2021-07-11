import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather.dart';
import 'package:clima/screens/location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getData() async {
    WeatherModel weatherModel = WeatherModel();
    var data = await weatherModel.getWeatherLocation();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        weatherLocation: data,
      );
    }));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SpinKitThreeBounce(
        color: Colors.green,
        size: 100,
      )),
    );
  }
}
