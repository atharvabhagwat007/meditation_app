import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/constants/color_constants.dart';

class FavouriteDownloadButton extends StatelessWidget {
  const FavouriteDownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 35.0,
            horizontal: 5,
          ),
          child: Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {
                context.popRoute();
              },
              child: CircleAvatar(
                radius: 27.r,
                backgroundColor: ColorConstants.c3F414E.withOpacity(0.8),
                child: const Icon(
                  Icons.favorite_border,
                  color: ColorConstants.cEBEAEC,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 35.0,
            horizontal: 10,
          ),
          child: Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {
                context.popRoute();
              },
              child: CircleAvatar(
                radius: 27.r,
                backgroundColor: ColorConstants.c3F414E.withOpacity(0.8),
                child: const Icon(
                  Icons.download_outlined,
                  color: ColorConstants.cEBEAEC,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
