import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/constants/color_constants.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    required this.hintText,
    required this.onChanged,
  });
  final Function(String) onChanged;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        enabled: true,
        contentPadding: const EdgeInsets.all(20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(
            color: ColorConstants.cA1A4B2,
            width: 0.3,
          ),
        ),
        filled: true,
        hintText: hintText,
        fillColor: ColorConstants.cF2F3F7,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorConstants.cA1A4B2,
            width: 0.2,
          ),
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
    );
  }
}
