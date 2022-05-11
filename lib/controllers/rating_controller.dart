

import 'package:get/get.dart';
import 'package:lab_india/api_providers/api_client.dart';
import 'package:lab_india/api_providers/provider/rating_provider.dart';
import 'package:lab_india/models/view_story_rating_model.dart';

class ViewRatingController extends GetxController with StateMixin<List<StoryRatingModel>>{

  String id = "";
  late Rx<StoryRatingModel> review;
  late Rx<StoryRatingModel> rating;
    // late Rx<Story> id;
    late Rx<User> firstname;

  // late Rx<List<RatingModel>> rating;
  // late Rx<User> fullname;


  callGetRatingApi(){

    Client client = Client();
    ViewRatingProvider viewRatingProvider = ViewRatingProvider(client : client.init());
    try {
      viewRatingProvider.viewRating(id: id).then((value) {
        if (value.isNotEmpty) {
          change(value, status: RxStatus.success());
        } else {
          change(null, status: RxStatus.empty());
        }
      }
          ,onError: (err){
            change(null,status: RxStatus.error(err.toString()));
          });

    }  on Exception catch (e) {
      change(null,status: RxStatus.error(e.toString()));
    }
  }

  @override
  void onInit() {
    callGetRatingApi();
    super.onInit();
  }
}