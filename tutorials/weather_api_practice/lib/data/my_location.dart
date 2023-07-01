import 'package:geolocator/geolocator.dart';

class MyLocation {
  double? latitude;
  double? longitude;

  Future<void> getMyCurrentLocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;

      print('latitude : $latitude');
      print('longitude : $longitude');
    } catch (e) {
      print('There was a problem with the internet connection.');
    }
  }
}
