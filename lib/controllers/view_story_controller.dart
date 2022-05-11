

import 'package:get/get.dart';
import 'package:lab_india/api_providers/api_client.dart';
import 'package:lab_india/api_providers/provider/view_story_provider.dart';
import 'package:lab_india/models/view_stories.dart';

class ViewStoryController extends GetxController with StateMixin<ViewStoryModel>{

  String id = Get.arguments;
  late Rx<ViewStoryModel> storyImg;
  late Rx<ViewStoryModel> title;
  late Rx<ViewStoryModel> description;
   List<ViewStoryModel> story = [];
  late Rx<ViewStoryModel> storyAudio;

  callGetStoryApi(){
    Client client = Client();
    ViewStoryProvider viewStoryProvider = ViewStoryProvider(client : client.init());
    try {
      viewStoryProvider.getStories(id : id).then((value) {
        change(value,status: RxStatus.success());
      }
          ,onError: (err){
            change(null,status: RxStatus.error(err.toString()));
          });

    }  catch (e) {
      change(null,status: RxStatus.error(e.toString()));
    }
  }

  @override
  void onInit() {
    callGetStoryApi();
    super.onInit();
  }
}