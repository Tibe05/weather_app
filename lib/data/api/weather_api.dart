import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../core/constants/constant.dart';

Future<Map<String, dynamic>>? fetchWeather(String city) async {
  final Uri url = Uri.parse("$baseUrl/current.json?key=$apiKey&q=$city");

  try {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print("Error: ${response.statusCode} - ${response.body}");
      return {};
    }
  } catch (e) {
    print("Exception: $e");
    return {};
  }
}
