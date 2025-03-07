import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CurrentWind extends StatefulWidget {
  const CurrentWind({super.key});

  @override
  State<CurrentWind> createState() => _CurrentWindState();
}

class _CurrentWindState extends State<CurrentWind> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Color(0x4D104084),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 5.w,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                'assets/icons/icon3.svg',
                height: 24.h,
                width: 24.w,
              ),
              Text(
                "18%",
                // data['wind']['speed'].toString() + ' km/h',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            spacing: 5.w,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                'assets/icons/icon4.svg',
                height: 24.h,
                width: 24.w,
              ),
              Text(
                "67%",
                // data['wind']['speed'].toString() + ' km/h',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            spacing: 5.w,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                'assets/icons/icon5.svg',
                height: 24.h,
                width: 24.w,
              ),
              Text(
                "25 km/h",
                // data['wind']['speed'].toString() + ' km/h',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
