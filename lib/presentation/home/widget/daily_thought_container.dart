import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/constants/color_constants.dart';

class DailyThoughtContainer extends StatelessWidget {
  const DailyThoughtContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: ColorConstants.c3F414E,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Daily Thought',
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: ColorConstants.cEBEAEC,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Meditation 3-10 MIN',
                    style: TextStyle(
                      fontSize: 11.sp,
                      color: ColorConstants.cEBEAEC,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            CircleAvatar(
              radius: 20.r,
              backgroundColor: ColorConstants.cEBEAEC,
              child: const Icon(
                Icons.play_arrow,
                color: ColorConstants.c3F414E,
              ),
            )
          ],
        ),
      ),
    );
  }
}
