import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/presentation/basic_course_list.dart';
import 'package:meditation_app/presentation/home/widget/basic_course_container.dart';

class HeaderListWidget extends StatelessWidget {
  const HeaderListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...basicCourseList
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: BasicCourseContainer(e: e),
                ),
              )
              .toList(),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    );
  }
}
