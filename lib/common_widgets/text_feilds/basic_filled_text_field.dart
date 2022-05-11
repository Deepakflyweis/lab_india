import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_texts.dart';

class FilledTextFeild extends StatelessWidget {
  const FilledTextFeild({
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
                borderSide: BorderSide(
                    width: 3, color: AppColors.primaryColor.withAlpha(100))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.sp),
                borderSide: BorderSide(
                    width: 3, color: AppColors.primaryColor.withAlpha(100))),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.sp),
                borderSide: BorderSide(
                    width: 3, color: AppColors.primaryColor.withAlpha(100))),
            hintStyle: TextStyle(color: AppColors.white),
            hintText: hint,
            filled: true,
            fillColor: AppColors.primaryColor.withAlpha(100).withAlpha(100)));
  }
}
