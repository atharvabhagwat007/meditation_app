import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/constants/color_constants.dart';
import 'package:meditation_app/core/constants/string_constants.dart';
import 'package:meditation_app/core/utils/datetime_utils.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 35,
          ),
          Center(
            child: Text(
              StringConstants.title,
              style: TextStyle(
                fontSize: 30.sp,
                letterSpacing: 3,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            DateTimeFunctions.greeting(),
            style: TextStyle(
              fontSize: 28.sp,
              fontWeight: FontWeight.w700,
              color: ColorConstants.c3F414E,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            StringConstants.weWishYouHaveAGoodDay,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 20.sp,
              color: ColorConstants.cA1A4B2,
            ),
          )
        ],
      ),
    );
  }
}
