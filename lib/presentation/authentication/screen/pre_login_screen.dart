import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/constants/asset_constants.dart';
import 'package:meditation_app/core/constants/color_constants.dart';
import 'package:meditation_app/core/constants/string_constants.dart';
import 'package:meditation_app/core/navigation/app_router.gr.dart';
import 'package:meditation_app/presentation/common/widget/common_button.dart';

class PreLoginScreen extends StatelessWidget {
  const PreLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 35,
            ),
            Text(
              StringConstants.title,
              style: TextStyle(fontSize: 30.sp, letterSpacing: 3),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(Assets.preloginImage),
            const SizedBox(
              height: 20,
            ),
            Text(
              StringConstants.weAreWhatWeDo,
              style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              StringConstants.thousandsOfPeopleAreUsing,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w200,
                height: 1.5.h,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            CommonButton(
              onTap: () {
                context.pushRoute(
                  LoginRoute(isLoginScreen: false),
                );
              },
              title: StringConstants.signUp,
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                text: '${StringConstants.alreadyhaveAnAccount.toUpperCase()} ',
                style: const TextStyle(color: ColorConstants.cA1A4B2),
                children: <TextSpan>[
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.pushRoute(
                          LoginRoute(isLoginScreen: true),
                        );
                      },
                    text: StringConstants.logIn.toUpperCase(),
                    style: const TextStyle(color: ColorConstants.c8E97FD),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
