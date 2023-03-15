import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/constants/color_constants.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 35.0,
        horizontal: 10,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: GestureDetector(
          onTap: () {
            context.popRoute();
          },
          child: CircleAvatar(
            radius: 27.r,
            backgroundColor: ColorConstants.cEBEAEC,
            child: const Icon(
              Icons.arrow_back,
              color: ColorConstants.c3F414E,
            ),
          ),
        ),
      ),
    );
  }
}
