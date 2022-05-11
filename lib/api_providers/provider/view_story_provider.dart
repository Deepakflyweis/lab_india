

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lab_india/helpers.dart';
import 'package:lab_india/models/view_stories.dart';
import 'package:get/get.dart'as g;

class ViewStoryProvider{

  Dio client;
  ViewStoryProvider({required this.client});


  Future <ViewStoryModel> getStories({required String id}) async {
    try{
      Response response = await client.get("/api/get-single-story/$id", );
      CommonLoader.hideLoading();
      if(response.statusCode == 200){
        return viewStoryModelFromJson(jsonEncode(response.data["singleView"]));

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