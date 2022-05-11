import 'package:flutter/material.dart';
import 'package:lab_india/common_widgets/app_bars/center_title_appbar.dart';
import 'package:lab_india/constants/app_text_styles.dart';
import 'package:lab_india/constants/app_texts.dart';
import 'package:sizer/sizer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CenterTitleAppBar(
        title: AppTexts.settings,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3.h),
              child: Text(
                AppTexts.language,
                style: AppTextStyles.black15,
              ),
            ),
            RadioListTile(
              value: '',
              groupValue: 'groupValue',
              onChanged: (val) {},
              title: Text(AppTexts.english),
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            RadioListTile(
              value: '',
              groupValue: 'groupValue',
              onChanged: (val) {},
              title: Text(AppTexts.marathi),
              controlAffinity: ListTileControlAffinity.trailing,
            ),
          ],
        ),
      ),
    );
  }
}
