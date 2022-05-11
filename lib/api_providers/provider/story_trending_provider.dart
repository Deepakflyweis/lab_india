
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lab_india/helpers.dart';
import 'package:lab_india/models/get_story_trending.dart';

class StoryTrendingProvider{

  Dio client;
  StoryTrendingProvider({required this.client});


  Future <TrendingStoryModel> getStoriesTrending({required String tradingId}) async {
    try{
      Response response = await client.get("/api/get-single-story-trading/$tradingId", );
      CommonLoader.hideLoading();
      if(response.statusCode == 200){
        return trendingStoryModelFromJson(jsonEncode(response.data));

      }
      else{
        return Future.error(response.data["error"]);
      }

    }on DioError catch (e) {
      print(e.response!.data);
      return Future.error(e.message);
    }
  }
}