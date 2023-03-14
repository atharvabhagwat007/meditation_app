import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/constants/asset_constants.dart';
import 'package:meditation_app/core/constants/color_constants.dart';
import 'package:meditation_app/core/constants/string_constants.dart';
import 'package:meditation_app/core/navigation/app_router.gr.dart';
import 'package:meditation_app/presentation/common/widget/common_button.dart';
import 'package:meditation_app/presentation/common/widget/common_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
    this.isLoginScreen = false,
  });

  final bool isLoginScreen;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = '';
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 35,
              ),
              GestureDetector(
                onTap: () {
                  context.popRoute();
                },
                child: CircleAvatar(
                  radius: 27.r,
                  backgroundColor: ColorConstants.c000000.withOpacity(0.05),
                  child: const Icon(Icons.arrow_back),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.isLoginScreen
                        ? StringConstants.welcomeBack
                        : StringConstants.createYourAccount,
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CommonButton(
                    leadingImage: Assets.facebookIcon,
                    onTap: () {},
                    title: StringConstants.continueWithFaceBook.toUpperCase(),
                    buttonColor: ColorConstants.c7583CA,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CommonButton(
                    leadingImage: Assets.googleicon,
                    onTap: () {},
                    titleColor: ColorConstants.c000000,
                    title: StringConstants.continueWithgoogle.toUpperCase(),
                    buttonColor: ColorConstants.cFFFFFF,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    StringConstants.orContinueWithEmail.toUpperCase(),
                    style: const TextStyle(fontSize: 14, letterSpacing: 2),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CommonTextField(
                    hintText: StringConstants.name,
                    onChanged: (final String value) {
                      name = value;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CommonTextField(
                    hintText: StringConstants.emailAddres,
                    onChanged: (final String value) {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CommonTextField(
                    hintText: StringConstants.password,
                    onChanged: (final String value) {},
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CommonButton(
                    onTap: () {
                      context.pushRoute(WelcomeRoute(name: name));
                    },
                    title: widget.isLoginScreen
                        ? StringConstants.logIn.toUpperCase()
                        : StringConstants.getStarted.toUpperCase(),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  if (widget.isLoginScreen)
                    const Text(
                      StringConstants.forgotpassword,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                      ),
                    ),
                  const SizedBox(
                    height: 40,
                  ),
                  !widget.isLoginScreen
                      ? RichText(
                          text: TextSpan(
                            text:
                                '${StringConstants.alreadyhaveAnAccount.toUpperCase()} ',
                            style:
                                const TextStyle(color: ColorConstants.cA1A4B2),
                            children: <TextSpan>[
                              TextSpan(
                                text: StringConstants.logIn.toUpperCase(),
                                style: const TextStyle(
                                  color: ColorConstants.c8E97FD,
                                ),
                              ),
                            ],
                          ),
                        )
                      : RichText(
                          text: TextSpan(
                            text: '${StringConstants.newhere.toUpperCase()} ',
                            style:
                                const TextStyle(color: ColorConstants.cA1A4B2),
                            children: <TextSpan>[
                              TextSpan(
                                text: StringConstants.signUp.toUpperCase(),
                                style: const TextStyle(
                                  color: ColorConstants.c8E97FD,
                                ),
                              ),
                            ],
                          ),
                        ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
