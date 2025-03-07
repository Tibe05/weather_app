import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/core/constants/constant.dart';
import 'package:weather_app/core/extensions/string_extensions.dart';

class NextForecast extends StatefulWidget {
  const NextForecast({super.key});

  @override
  State<NextForecast> createState() => _NextForecastState();
}

class _NextForecastState extends State<NextForecast> {
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
                "Next Forecast",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SvgPicture.asset(
                'assets/icons/icon6.svg',
                height: 20.h,
                width: 20.w,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              daysList.length,
              (index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15.h,
                        horizontal: 10.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${daysList[index]}".limitWordsLen(3),
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
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
                          Row(
                            spacing: 10.w,
                            children: [
                              Text(
                                "13°C",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                ),
                              ),
                              Opacity(
                                opacity: 0.5,
                                child: Text(
                                  "17°C",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
