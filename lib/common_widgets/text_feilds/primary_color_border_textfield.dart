import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_texts.dart';

class PrimaryColorBorderTextFeild extends StatelessWidget {
  const PrimaryColorBorderTextFeild({
    Key? key,
    required this.hint,
    //required this.label,
  }) : super(key: key);
  //final String label;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.sp),
              borderSide: BorderSide(width: 3, color: AppColors.primaryColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.sp),
              borderSide: BorderSide(width: 3, color: AppColors.primaryColor)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.sp),
              borderSide: BorderSide(width: 3, color: AppColors.primaryColor)),
          /* labelText: label,
          labelStyle: TextStyle(color: AppColors.p), */
          fillColor: AppColors.primaryColor.withAlpha(40),
          filled: true,
          hintStyle: TextStyle(color: AppColors.primaryColor),
          hintText: hint),
    );
  }
}
