import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/core/constants/constant.dart';

class TodayWeather extends StatefulWidget {
  const TodayWeather({super.key});

  @override
  State<TodayWeather> createState() => _TodayWeatherState();
}

class _TodayWeatherState extends State<TodayWeather> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 40.w,
        right: 40.w,
        top: 0,
        bottom: 20.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Color(0x4D104084),
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Column(
        spacing: 12.h,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Today",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "Mar, 10",
                // data['wind']['speed'].toString() + ' km/h',
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              4,
              (index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: currentIndex == index
                          ? Color(0x334899E3)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(
                        color: currentIndex == index
                            ? Color(0xFF91DEFF)
                            : Colors.transparent,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15.h,
                        horizontal: 10.w,
                      ),
                      child: Column(
                        spacing: 30.h,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "31°C",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 40.h,
                            width: 40.w,
                            child: Image.asset(
                              weatherIconList[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "15.00",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 14.h),
        ],
      ),
    );
  }
}
