import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lab_india/models/view_story_rating_model.dart';

import '../../helpers.dart';

class ViewRatingProvider{

  Dio client;
  ViewRatingProvider({required this.client});


  Future <List<StoryRatingModel>> viewRating({required String id}) async {
    try{
      Response response = await client.get("/api/get/Rating/$id",);
      CommonLoader.hideLoading();
      if(response.statusCode == 200){
        return storyRatingModelFromJson(jsonEncode(response.data["data"]["rating"]));
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