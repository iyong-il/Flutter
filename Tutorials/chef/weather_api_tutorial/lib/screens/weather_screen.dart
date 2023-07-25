import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:intl/intl.dart';
import 'package:weather_api_practice/model/model.dart';
import '../ui_components/widget.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key, this.parseWeatherData, this.parseAirData});

  final dynamic parseWeatherData;
  final dynamic parseAirData;

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  // 변수
  Model model = Model();
  String? cityName;
  int? temperature;
  Widget? weatherIcon;
  String? description;
  Widget? airIcon;
  Widget? airCondition;
  double? dust1;
  double? dust2;
  var date = DateTime.now();

  // 라이프사이클
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateData(widget.parseWeatherData, widget.parseAirData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(''),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.near_me),
          iconSize: 30.0,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.location_searching),
            iconSize: 30.0,
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/image/background.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 상단 지역 / 시간
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 150.0,
                            ),
                            Text(
                              '$cityName',
                              style: GoogleFonts.lato(
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                TimerBuilder.periodic(
                                  (Duration(minutes: 1)),
                                  builder: (context) {
                                    getSystemTime();
                                    return Text(
                                      '${getSystemTime()}',
                                      style: GoogleFonts.lato(
                                          fontSize: 16.0, color: Colors.white),
                                    );
                                  },
                                ),
                                // 날짜 - 요일
                                getDateText(' - EEEE, ', date),
                                // 날짜 - 일, 월, 년도
                                getDateText('d MMM, yy', date)
                              ],
                            )
                          ],
                        ),
                        // 온도
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '$temperature\u2103',
                              style: GoogleFonts.lato(
                                fontSize: 85.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                weatherIcon!,
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  '$description',
                                  style: GoogleFonts.lato(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  // 하단 미세먼지 정보
                  Column(
                    children: [
                      Divider(
                        height: 15.0,
                        thickness: 2.0,
                        color: Colors.white30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // AQI 대기질 지수
                          getAirPollutionInfo('AQI(대기질 지수)', null, airIcon ?? null, airCondition ?? null),
                          // 미세먼지
                          getAirPollutionInfo('미세먼지', dust1 ?? null, null, null),
                          // 초미세먼지
                          getAirPollutionInfo('초미세먼지', dust2 ?? null, null, null),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // 메서드
  void updateData(dynamic weatherData, dynamic airData) {
    cityName = weatherData['timezone'];
    double temp = weatherData['current']['temp'];
    int condition = weatherData['current']['weather'][0]['id'];
    description = weatherData['current']['weather'][0]['description'];
    weatherIcon = model.getWeatherIcon(condition);

    int index = airData['list'][0]['main']['aqi'];
    airIcon = model.getAirIcon(index);
    airCondition = model.getAirCondition(index);
    dust1 = airData['list'][0]['components']['pm10'];
    dust2 = airData['list'][0]['components']['pm2_5'];

    temperature = temp.toInt();
  }

  String getSystemTime() {
    var now = DateTime.now();

    return DateFormat('h:mm a').format(now);
  }
}
