

import 'package:get/get.dart';
import 'package:lab_india/api_providers/api_client.dart';
import 'package:lab_india/api_providers/provider/story_trending_provider.dart';
import 'package:lab_india/models/get_story_trending.dart';

class TrendingStoryController  extends GetxController with StateMixin<TrendingStoryModel>{

  String id = "";
  late Rx<TrendingStoryModel> storyImg;
  late Rx<TrendingStoryModel> title;
  late Rx<TrendingStoryModel> tradingId;
  late Rx<TrendingStoryModel> story;
  late Rx<TrendingStoryModel> storyAudio;

  callGetStoryApi(){

    Client client = Client();
    StoryTrendingProvider storyTrendingProvider = StoryTrendingProvider(client : client.init());
    try {
      storyTrendingProvider.getStoriesTrending(tradingId : id).then((value) {
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