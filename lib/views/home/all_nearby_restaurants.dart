import 'package:demo/common/reusable_text.dart';
import 'package:demo/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:demo/common/app_style.dart';
import 'package:demo/constants/constants.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title: ReusableText(text: "Nearby Restaurants", 
        style: appStyle(13, kGray, FontWeight.w600)),
      ),
      body: const Center(
        child: Text("All Nearby Restaurants"),
      ),
    );
  }
}