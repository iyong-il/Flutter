import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

Widget getSizeBox(double height) {
  return SizedBox(
    height: height,
  );
}

Text getDateText(String dateFormat, var date) {
  return Text(
    DateFormat(dateFormat).format(date),
    style: GoogleFonts.lato(fontSize: 16.0, color: Colors.white),
  );
}

Widget getAirPollutionInfo(
    String title, double? dust, Widget? airIcon, Widget? airCondition) {
  if (!title.contains('AQI')) {
    return Column(
      children: [
        Text(
          title,
          style: GoogleFonts.lato(fontSize: 14.0, color: Colors.white),
        ),
        getSizeBox(10),
        Text(
          '$dust',
          style: GoogleFonts.lato(fontSize: 24.0, color: Colors.white),
        ),
        getSizeBox(10),
        Text(
          '㎍/m³',
          style: GoogleFonts.lato(
              fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  } else {
    return Column(
      children: [
        Text(
          title,
          style: GoogleFonts.lato(fontSize: 14.0, color: Colors.white),
        ),
        getSizeBox(10),
        airIcon!,
        getSizeBox(10),
        airCondition!
      ],
    );
  }
}
