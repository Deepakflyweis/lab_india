
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';
import 'package:lab_india/api_providers/api_client.dart';
import 'package:lab_india/api_providers/provider/latest_provider.dart';
import 'package:lab_india/models/latest_model.dart';

class LatestController extends GetxController with StateMixin<List<LatestModel>>{

  String id = "";
  List<LatestModel> latestImg = List<LatestModel>.empty().obs;
  late Rx<LatestModel> latest;
  late Rx<LatestModel> description;
  late Rx<LatestModel> storyId;

  callGetLatestApi(){

    Client cclient = Client();
    LatestProvider latestProvider = LatestProvider(client : cclient.init());
    try {
      latestProvider.getLatest(storyId: id).then((value) {
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
    callGetLatestApi();
    super.onInit();
  }
}