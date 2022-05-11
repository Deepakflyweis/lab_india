import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'app_colors.dart';

class AppTextStyles {
  static var white15Bold = TextStyle(
      letterSpacing: 1,
      color: Colors.white,
      fontSize: 15.sp,
      fontWeight: FontWeight.w700);
  static var white8Bold = TextStyle(
      color: Colors.white, fontSize: 8.sp, fontWeight: FontWeight.w700);
  static var primary15 =
      TextStyle(color: AppColors.primaryColor, fontSize: 15.sp);
  static var primary12 =
      TextStyle(color: AppColors.primaryColor, fontSize: 12.sp);
  static var black15 = TextStyle(color: AppColors.black, fontSize: 15.sp);
  static var black12 = TextStyle(color: AppColors.black, fontSize: 12.sp);
  static var black10 = TextStyle(color: AppColors.black, fontSize: 10.sp);
  static var grey12 = TextStyle(color: AppColors.grey400, fontSize: 12.sp);
  static var grey10 = TextStyle(color: AppColors.grey400, fontSize: 10.sp);
}
