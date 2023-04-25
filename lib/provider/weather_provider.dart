import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:learning_provider/model/weather.dart';
import 'package:learning_provider/utils/commons.dart';

class WeatherProvider extends ChangeNotifier {
  double _latitude = 0.0;
  double _longitude = 0.0;
  String _city = '';
  Weather? _weather;
  bool _isLoading = true;

  double get latitude => _latitude;
  double get longitude => _longitude;
  String get city => _city;
  dynamic get weather => _weather;
  bool get isLoading => _isLoading;

  /// a function we call to fetch our longitude and latitude
  Future getUserLocation() async {
    bool isserviceEnabled; // the location service availability.
    LocationPermission permission; // the nature of permission granted..

    // checking the service availability.
    isserviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isserviceEnabled) {
      return Future.error("Location services are disabled");
    }

    // checking the nature of the permission granted..
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("Location permission are denied");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error("Location permission is permanently denied");
    }
    // return the current position...
    return await Geolocator.getCurrentPosition().then(
      (value) {
        _latitude = value.latitude; // set the value of the latitude..
        _longitude = value.longitude; // set the value of the longitude...
        notifyListeners(); // notify the state change...
        /// now calling the getAddress() function because
        /// it depends on the current value of the latitude and longitude..
        getAddress(value.latitude, value.longitude);
        fetchWeatherDataFromAPI(value.latitude, value.longitude).then((_){
          _isLoading = false;
          notifyListeners();
        });
        notifyListeners();
        print("$_latitude :::::::::::$_longitude");
      },
    );
  }

  /// get the address from the latitude and longitude already
  /// gotten from our previous function.
  getAddress(lat, lon) async {
    // calling the geocoding dependency to help us with that
    List<Placemark> placemark = await placemarkFromCoordinates(lat, lon);

    /// the result is a list of objects, so we need to access the 0 index
    /// and store in a variable "currentAddress"
    var currentAddress = placemark[0].locality;
    // modify the state of our provider to the new state of the city
    _city = currentAddress!;
    notifyListeners(); // notifying the listeners.
  }

  /// the function that will call the WeatherAPI
  Future fetchWeatherDataFromAPI(a,b) async {
    var uri =
        "https://api.weatherbit.io/v2.0/current?lat=$a&lon=$b&key=$apiKey";

    try {
      http.Response response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        _weather = weatherFromJson(response.body);
        print(":::::::::::::::::::: $_weather");
        _isLoading = false;
        notifyListeners();
      }
    } catch (e) {
      print("::::::::::::::\$ERROR MESSAGE IS THIS ${e.toString()}");
    }
  }
}
