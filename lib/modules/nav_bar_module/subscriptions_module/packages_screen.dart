import 'package:flutter/material.dart';
import 'package:lab_india/common_widgets/app_bars/center_title_appbar.dart';
import 'package:lab_india/constants/app_texts.dart';
import 'package:lab_india/routes/routing_constant.dart';
import 'package:sizer/sizer.dart';

import '../../subscriptions_module_screen/golden_package_renew/subscription_golden_renew.dart';

class PackagesScreen extends StatelessWidget {
  const PackagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CenterTitleAppBar(
        title: AppTexts.packages,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(6.sp),
            child: InkWell(
              onTap: () {
                // Navigator.pushNamed(context, goldenRenewScreenRoute);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> GoldenRenew()));
              },
                child: Image.asset('assets/images/package_gold.png')),
          ),
          Padding(
            padding: EdgeInsets.all(6.sp),
            child: Image.asset('assets/images/package_silver.png'),
          ),
          Padding(
            padding: EdgeInsets.all(6.sp),
            child: Image.asset('assets/images/package_bronze.png'),
          ),
        ],
      ),
    );
  }
}
