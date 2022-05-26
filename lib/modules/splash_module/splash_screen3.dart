import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lab_india/common_widgets/buttons/rec_button.dart';
import 'package:lab_india/constants/app_text_styles.dart';
import 'package:lab_india/constants/app_texts.dart';
import 'package:lab_india/modules/splash_module/cubit/image_index_cubit.dart'; 
import 'package:sizer/sizer.dart';
 

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({Key? key}) : super(key: key);

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        body: Column(
          children: [
            Spacer(),
            BlocConsumer<ImageIndexCubit, ImageIndexState>(
              listener: (context, state) {},
              builder: (context, state) {
                return Text(
                  state.titleList[state.imageIndex],
                  style: AppTextStyles.primary15,
                );
              },
            ),
            Spacer(),
            SizedBox(
              width: 40.w,
              height: 38.h,
              child: Stack(
                children: [
                  BlocConsumer<ImageIndexCubit, ImageIndexState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return Image.asset(
                        state.imageList[state.imageIndex],
                        width: 40.w,
                        height: 38.h,
                        fit: BoxFit.contain,
                      );
                    },
                  ),
                  Image.asset(
                    'assets/images/iphone_frame.png',
                    width: 40.w,
                    height: 38.h,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            RecButton(
                title: AppTexts.next,
                onTap: () {
                  BlocProvider.of<ImageIndexCubit>(context).increment(context);
                }),

          ],
        ),
      ),
    );
  }
}
