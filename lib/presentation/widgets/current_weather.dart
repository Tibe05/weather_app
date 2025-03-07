import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/api/weather_api.dart';

class CurrentWeather extends StatefulWidget {
  const CurrentWeather({super.key});

  @override
  State<CurrentWeather> createState() => _CurrentWeatherState();
}

class _CurrentWeatherState extends State<CurrentWeather> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 187.h,
          width: 284.w,
          child: Image.asset('assets/images/sun.png'),
        ),
        SizedBox(height: 2.h),
        FutureBuilder<Map<String, dynamic>>(
          future: fetchWeather("Abidjan"),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Text('No data available');
            } else {
              final weatherData = snapshot.data!;
              return Container(
                height: 76.h,
                child: Text(
                  '${weatherData["current"]["temp_c"]}º',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 64.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            }
          },
        ),
        SizedBox(height: 25.h),
        Text(
          'Precipitations\n Max.: 34º Min.: 28º',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
