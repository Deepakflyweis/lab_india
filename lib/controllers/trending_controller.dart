

import 'package:get/get.dart';
import 'package:lab_india/api_providers/provider/trending_provider.dart';
import 'package:lab_india/models/trending_model.dart';

import '../api_providers/api_client.dart';

class TrendingController extends GetxController with StateMixin<List<TrendingModel>>{

  String id = "";
  late Rx<TrendingModel> trending;
  List<TrendingModel> trendingImg = List<TrendingModel>.empty().obs;
  late Rx<TrendingModel> description;
   late Rx<TrendingModel> storyId;


  callGetTrendingApi(){
    Client cclient = Client();
    TrendingProvider trendingProvider = TrendingProvider(client : cclient.init());
    try {
      trendingProvider.getTrending(storyId : id).then((value) {
        if (value.isNotEmpty) {
          change(value, status: RxStatus.success());
        } else {
          change(null, status: RxStatus.empty());
        }
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
    callGetTrendingApi();
    super.onInit();
  }
}