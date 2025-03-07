import 'package:flutter_dotenv/flutter_dotenv.dart';

final String apiKey = dotenv.env['WEATHER_API_KEY'] ?? ""; // Replace with your WeatherAPI key
final String baseUrl = "https://api.weatherapi.com/v1";

List weatherIconList = [
  "assets/images/sun.png",
  "assets/images/rainy.png",
  "assets/images/half-moon.png",
  "assets/images/rainy.png",
  "assets/images/storm.png",
  "assets/images/weather.png",
  "assets/images/weather.png",
];

List daysList = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday",
];
