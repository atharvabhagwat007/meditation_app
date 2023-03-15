import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/constants/color_constants.dart';

class FavouriteListening extends StatelessWidget {
  const FavouriteListening({
    super.key,
    required this.favourite,
    required this.listening,
  });
  final String favourite;
  final String listening;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.favorite,
              color: ColorConstants.cFF84A2,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              favourite,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: ColorConstants.cA1A4B2,
              ),
            )
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.headphones,
              color: ColorConstants.c7FD2F2,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              listening,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: ColorConstants.cA1A4B2,
              ),
            )
          ],
        )
      ],
    );
  }
}
