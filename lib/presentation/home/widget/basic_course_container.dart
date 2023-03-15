import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/constants/color_constants.dart';
import 'package:meditation_app/core/constants/string_constants.dart';
import 'package:meditation_app/domain/entities/choose_topic_entity.dart';

class BasicCourseContainer extends StatelessWidget {
  const BasicCourseContainer({
    super.key,
    required this.e,
  });
  final ChooseTopicEntity e;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 177.w,
      decoration: BoxDecoration(
        color: e.backgroundColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Stack(
        children: [
          Container(
            height: 92.h,
            alignment: Alignment.topRight,
            child: Image.asset(e.image),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                e.title,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: e.titleColor,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 20,
              ),
              child: Text(
                e.time!,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: ColorConstants.cEBEAEC,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 35.h,
                width: 70.w,
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black38,
                        width: 0.4,
                      ),
                      color: ColorConstants.cEBEAEC,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Center(
                      child: Text(
                        StringConstants.start,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: ColorConstants.c3F414E,
                        ),
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
