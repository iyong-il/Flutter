import 'package:flutter/material.dart';
import 'package:weather_api_practice/data/my_location.dart';
import 'package:weather_api_practice/data/network.dart';
import 'package:weather_api_practice/screens/weather_screen.dart';

// 내 apikey가 아직 활성화가 되지 않아 코딩셰프님의 키를 받아서 사용
const apikey = '0d0cc1131b44cd6ea0027e60e69dc007';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // 메서드
  void getLocation() async {
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();

    double? lat = myLocation.latitude;
    double? lon = myLocation.longitude;

    String weatherUrl =
        'https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$lon&units=metric&appid=$apikey';
    Network network = Network(weatherUrl);

    String airUrl =
        'http://api.openweathermap.org/data/2.5/air_pollution?lat=$lat&lon=$lon&appid=$apikey';
    Network network2 = Network(airUrl);

    // 날씨 데이터
    var weatherData = await network.getJsonData();
    // 공기 데이터
    var airData = await network2.getJsonData();

    print('weatherData : $weatherData');
    print('airData : $airData');

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => WeatherScreen(
                  parseWeatherData: weatherData,
                  parseAirData: airData,
                )));
  }

  // 라이프 사이클
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Get My Location'),
          onPressed: () {
            null;
          },
        ),
      ),
    );
  }
}
