import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lab_india/models/latest_model.dart';

import '../../helpers.dart';

class LatestProvider{
  Dio client;
  LatestProvider({required this.client});

  Future <List<LatestModel>> getLatest({required String storyId}) async {
    try{
      Response response = await client.get("/api/get/Latest/$storyId", );
      CommonLoader.hideLoading();
      if(response.statusCode == 200){
        return latestModelFromJson(jsonEncode(response.data));
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