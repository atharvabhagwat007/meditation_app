import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/constants/color_constants.dart';
import 'package:meditation_app/core/navigation/app_router.gr.dart';
import 'package:meditation_app/domain/entities/choose_topic_entity.dart';
import 'package:meditation_app/presentation/home/widget/filters_container.dart';

class FilterWidgetList extends StatelessWidget {
  const FilterWidgetList({
    super.key,
    required this.list,
    required this.title,
  });
  final String title;
  final List<ChooseTopicEntity> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              color: ColorConstants.c3F414E,
            ),
          ),
        ),
        SizedBox(
          height: 170.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            children: list
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: GestureDetector(
                      onTap: () {
                        context.pushRoute(const DetailRoute());
                      },
                      child: FilterContainer(e: e),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
