import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';
import '../../constants/app_texts.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown(
      {Key? key,
      required this.items,
      required this.onChanged,
      required this.label})
      : super(key: key);
  final List<DropdownMenuItem<Object>> items;
  final void Function(Object?) onChanged;
  final String label;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: AppTextStyles.grey12,
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.grey400),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.grey400),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.grey400),
          ),
        ),
        items: items,
        onChanged: onChanged);
  }
}
