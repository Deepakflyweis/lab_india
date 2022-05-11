import 'package:flutter/material.dart';
import 'package:lab_india/constants/app_text_styles.dart';
import 'package:sizer/sizer.dart';

import '../../constants/app_colors.dart';

class RecButton extends StatelessWidget {
  const RecButton({Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.sp),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 7.h,
          width: 100.w,
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(6.sp)),
          child: Center(
            child: Text(title, style: AppTextStyles.white15Bold),
          ),
        ),
      ),
    );
  }
}
