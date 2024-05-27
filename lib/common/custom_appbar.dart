import 'package:demo/common/app_style.dart';
import 'package:demo/common/reusable_text.dart';
import 'package:demo/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        width: width,
        height: 110.h,
        color: kOffWhite,
        child: Container(
            margin: EdgeInsets.only(top: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 22.r,
                      backgroundColor: kSecondary,
                      backgroundImage: const NetworkImage(
                          'https://lh3.googleusercontent.com/a/ACg8ocL98kmDcBHYjk_xlq8Ju-tWSC6Myuz8T5rmNjvDiOroqIYvehq-=s360-c-no'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReusableText(
                              text: "Deliver to",
                              style: appStyle(13, kSecondary, FontWeight.w600)),
                          SizedBox(
                            width: width * 0.65,
                            child: Text("16768 21st Ave N, Plymouth, MN 55447",
                                overflow: TextOverflow.ellipsis,
                                style: appStyle(
                                    11, kGrayLight, FontWeight.normal)),
                          ),
                        ],
                      ),
                    ),
                     Text(
                      getTimeOfDay(),
                      style:const TextStyle(fontSize: 35),
                    )
                  ],
                ),
              ],
            )));
  }

  String getTimeOfDay() {
    DateTime now = DateTime.now();
    int hour = now.hour;
    if (hour >= 0 && hour < 12) {
      return '☀️';
    } else if (hour >= 12 && hour < 16) {
      return '⛅';
    } else {
      return '🌙';
    }
  }
}
