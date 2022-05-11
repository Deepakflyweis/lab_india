import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';

class CenterTitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CenterTitleAppBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Size get preferredSize => Size(double.infinity, 5.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.white,
      title: Text(
        title,
        style: AppTextStyles.black15,
      ),
      centerTitle: true,
    );
  }
}
