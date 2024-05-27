import 'package:demo/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demo/constants/uidata.dart';

class FoodsList extends StatelessWidget {
  const FoodsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(restaurants.length, (i) {
          var food = foods[i];
          return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height:200.h,
          width: 150.w,
          color: kSecondary,
          ),
          );
        }),
      ),
    );
  }
}
