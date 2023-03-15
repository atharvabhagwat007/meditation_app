import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/domain/entities/choose_topic_entity.dart';

class FilterContainer extends StatelessWidget {
  const FilterContainer({
    super.key,
    required this.e,
  });
  final ChooseTopicEntity e;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        color: e.backgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e.title,
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: e.titleColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    e.subtitle!,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: e.titleColor,
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Text(
                    e.time!,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: e.titleColor,
                    ),
                  )
                ],
              ),
            ),
          ),
          Image.asset(e.image),
        ],
      ),
    );
  }
}
