import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/constants/asset_constants.dart';
import 'package:meditation_app/core/constants/color_constants.dart';
import 'package:meditation_app/core/constants/string_constants.dart';
import 'package:meditation_app/core/navigation/app_router.gr.dart';
import 'package:meditation_app/presentation/topic_list.dart';

class ChooseTopicScreen extends StatelessWidget {
  const ChooseTopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundImage(),
          _body(context),
        ],
      ),
    );
  }

  Widget _body(final BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                StringConstants.whatBringsYou,
                style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '${StringConstants.toSilentMoon}?',
                style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                StringConstants.chooseATopicToFocus,
                style: TextStyle(
                  fontSize: 20.sp,
                  color: ColorConstants.cA1A4B2,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              _topicListWidget(context),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      );

  Widget _topicListWidget(final BuildContext context) => GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: 0.8,
        mainAxisSpacing: 10,
        children: topicList
            .map(
              (e) => Padding(
                padding: EdgeInsets.only(
                  right: 10,
                  top: (e.id % 2) == 0 ? 10 : 25,
                  bottom: (e.id % 2) == 0 ? 15 : 10,
                ),
                child: GestureDetector(
                  onTap: () {
                    context.pushRoute(
                      const HomeRouter(
                        children: [HomeRoute()],
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: e.backgroundColor,
                      borderRadius: BorderRadius.circular(10.r),
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        alignment: Alignment.topCenter,
                        image: Image.asset(e.image).image,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
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
                  ),
                ),
              ),
            )
            .toList(),
      );

  Widget _backgroundImage() => Align(
        alignment: Alignment.bottomCenter,
        child: Image.asset(
          Assets.chooseTopicImage,
          color: ColorConstants.c8E97FD.withOpacity(0.15),
        ),
      );
}
