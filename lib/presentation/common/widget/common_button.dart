import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/core/constants/color_constants.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.onTap,
    required this.title,
    this.buttonColor,
    this.titleColor,
    this.leadingImage,
  });
  final Function() onTap;
  final String title;
  final Color? buttonColor;
  final Color? titleColor;
  final String? leadingImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black38,
            width: 0.4,
          ),
          color: buttonColor ?? ColorConstants.c8E97FD,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: leadingImage == null
            ? Center(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: titleColor ?? ColorConstants.cF6F1FB,
                  ),
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(leadingImage!),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: titleColor ?? ColorConstants.cF6F1FB,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
