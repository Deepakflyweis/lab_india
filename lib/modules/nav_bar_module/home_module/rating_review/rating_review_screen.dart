import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:lab_india/api_providers/api_client.dart';
import 'package:lab_india/api_providers/provider/add_rating_provider.dart';
import 'package:lab_india/common_widgets/buttons/small_rec_button.dart';
import 'package:lab_india/constants/app_colors.dart';
import 'package:lab_india/constants/app_texts.dart';
import 'package:lab_india/models/add_rating_model.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../common_widgets/app_bars/auto_leading_appbar.dart';
import '../../../../../../common_widgets/buttons/rec_button.dart';
import '../../../../../../constants/app_text_styles.dart';
import '../story_details_module/story_details_screen.dart';

class RatingReview extends StatelessWidget {
  final addRatingFormKey = GlobalKey<FormState>();


  RatingReview({Key? key}) : super(key: key);

  // late final ratingData;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AutoLeadingAppBar(title: 'Title'),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 1.h,horizontal: 2.w),
        child: SingleChildScrollView(
          child: Form(
            key: addRatingFormKey ,
            child: Column(
              children: <Widget>[
                // SizedBox(
                //   height: 2.h,
                // ),
                //
                // Text('What is Lorem Ipsum?\n'
                //     'Lorem Ipsum is simply dummy text of the'
                //     ' printing and typesetting industry. Lorem '
                //     'Ipsum has been the industry\'s standard dummy'
                //     ' text ever since the 1500s, when an unknown printer '
                //     ' a galley of type and scrambled it to make a '
                //     ' printing and typesetting industry. Lorem '
                //     'Ipsum has been the industry\'s standard dummy'
                //     ' text ever since the 1500s, when an unknown printer '
                //     ' a galley of type and scrambled it to make a '
                //     ' specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus'
                //     ' PageMaker including versions of Lorem Ipsum.',
                //   style: TextStyle(
                //     color: AppColors.black,
                //     fontSize: 14,
                //   ),
                // ),
                //
                // SizedBox(
                //   height: 2.h,
                // ),

                SizedBox(
                  height: 2.h,
                ),
                Text('Thank You',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 17,

                  ),
                ),

                SizedBox(
                  height: 2.h,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(AppTexts.Review,

                    style: TextStyle(

                      color: AppColors.black,
                      fontSize: 15,

                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),


                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor),
                  ),
                  child: const TextField(

                    maxLines: 9,
                    decoration: InputDecoration(
                      hintText: 'Write Your Review'
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(AppTexts.Rating,

                    style: TextStyle(

                      color: AppColors.black,
                      fontSize: 15,

                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),


                RatingBar.builder(
                  itemSize: 35,
                  initialRating: 1,
                  minRating: 1,
                  direction: Axis.horizontal,
                  updateOnDrag: false,
                  tapOnlyMode: true,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,size: 10,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),

                SizedBox(
                  height: 4.h,
                ),

                SmallRecButton(title:AppTexts.SUBMIT, onTap: () {
                  // Navigator.push(
                  //   //GoldenPay
                  //   //StoryDetailsScreen
                  //     context, MaterialPageRoute(builder: (context)=> StoryDetailsScreen()));

                  addrating();
                }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

    addrating() async {

      if(addRatingFormKey.currentState!.validate()) {
        Client client = Client();
        AddRatingProvider addRatingProvider = AddRatingProvider(client: client.init());
        addRatingProvider.addRating();
      }
    }
}
