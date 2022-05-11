import 'package:flutter/material.dart';
import 'package:lab_india/common_widgets/buttons/small_rec_button.dart';
import 'package:lab_india/constants/app_colors.dart';
import 'package:lab_india/constants/app_texts.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../common_widgets/app_bars/auto_leading_appbar.dart';
import '../../../../../../common_widgets/buttons/rec_button.dart';
import '../../../../../../constants/app_text_styles.dart';
import '../../../rating_review/rating_review_screen.dart';
import '../story1/story_1_page.dart';


class Story2Page extends StatelessWidget {
  const Story2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AutoLeadingAppBar(title: 'Title'),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 1.h,horizontal: 2.w),
        child: SingleChildScrollView(
          child: Column(
            children: [


              SizedBox(
                height: 2.h,
              ),

              Text('What is Lorem Ipsum?\n'
                  'Lorem Ipsum is simply dummy text of the'
                  ' printing and typesetting industry. Lorem '
                  'Ipsum has been the industry\'s standard dummy'
                  ' text ever since the 1500s, when an unknown printer '
                  ' a galley of type and scrambled it to make a '
                  ' printing and typesetting industry. Lorem '
                  'Ipsum has been the industry\'s standard dummy'
                  ' text ever since the 1500s, when an unknown printer '
                  ' a galley of type and scrambled it to make a '
                  ' specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus'
                  ' PageMaker including versions of Lorem Ipsum.',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 14,
                ),
              ),

              SizedBox(
                height: 2.h,
              ),


              PhysicalModel(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(6.sp),
                elevation: 1,
                child: SizedBox(
                  height: 21.3.h,
                  child: Padding(
                    padding: EdgeInsets.all(3.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://i.graphicmama.com/blog/wp-content/uploads/2018/02/21095725/Children-Book-Illustrations-Breathtaking-Examples-for-Inspiration.jpg',
                          height: 20.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: ((context, error, stackTrace) => Container(
                            decoration: BoxDecoration(
                              color: AppColors.grey400,
                              borderRadius: BorderRadius.circular(4.sp),
                            ),
                            child: Center(
                                child: Text(
                                  error.toString(),
                                  style: AppTextStyles.black12,
                                )),
                          )),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text('Why do we use it?\n'
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,'
                  ' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like',

                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 14,

                ),
              ),


              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 7.w,vertical: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallRecButton(title:AppTexts.NEXT, onTap: () {
                        Navigator.push(
                          //GoldenPay
                          //StoryDetailsScreen
                            context, MaterialPageRoute(builder: (context)=> RatingReview()));
                    }
                    ),

                    SmallRecButton(title:AppTexts.PREVIOUS, onTap: () {

                       Navigator.push(
                          //GoldenPay
                         // StoryDetailsScreen
                           context, MaterialPageRoute(builder: (context)=> Story1Page()));
                    }
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
