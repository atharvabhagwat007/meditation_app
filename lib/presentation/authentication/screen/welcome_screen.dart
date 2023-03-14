import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/core/constants/asset_constants.dart';
import 'package:meditation_app/core/constants/color_constants.dart';
import 'package:meditation_app/core/constants/string_constants.dart';
import 'package:meditation_app/core/navigation/app_router.gr.dart';
import 'package:meditation_app/presentation/common/widget/common_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    super.key,
    required this.name,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.c8E97FD,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 35,
              ),
              Text(
                StringConstants.title,
                style: TextStyle(
                  fontSize: 30.sp,
                  letterSpacing: 3,
                  color: ColorConstants.cFFECCC,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                '${StringConstants.hi} $name ${StringConstants.welcome} ${StringConstants.toSilentMoon}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                  color: ColorConstants.cFFECCC,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                StringConstants.exploreTheApp,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w300,
                  color: ColorConstants.cFFECCC,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset(Assets.cloudImage),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(Assets.cloudImage),
              ),
              Image.asset(Assets.welcomeImage),
              const SizedBox(
                height: 20,
              ),
              CommonButton(
                onTap: () {
                  context.pushRoute(const ChooseTopicRoute());
                },
                title: StringConstants.getStarted,
                titleColor: ColorConstants.c000000,
                buttonColor: ColorConstants.cEBEAEC,
              )
            ],
          ),
        ),
      ),
    );
  }
}
