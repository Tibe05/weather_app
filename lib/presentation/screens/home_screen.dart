import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/presentation/widgets/current_weather.dart';
import 'package:weather_app/presentation/widgets/next_forecast.dart';

import '../widgets/current_wind.dart';
import '../widgets/today_weather.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF29B2DD),
            Color(0xFF33AADD),
            Color(0xFF2DC8EA),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Row(
              children: [
                SizedBox(
                  width: 28.w,
                  height: 28.w,
                  child: SvgPicture.asset(
                    'assets/icons/icon1.svg',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(width: 10.w),
                Text(
                  'Abidjan',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 12.w),
                Icon(Icons.keyboard_arrow_down, color: Colors.white),
              ],
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: SvgPicture.asset(
                  'assets/icons/icon2.svg',
                  height: 28.h,
                  width: 28.w,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              CurrentWeather(),
              CurrentWind(),
              TodayWeather(),
              NextForecast(),
            ],
          )),
        ),
      ),
    );
  }
}
