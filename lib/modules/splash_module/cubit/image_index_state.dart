part of 'image_index_cubit.dart';

@immutable
class ImageIndexState {
  int imageIndex;
  ImageIndexState({
    required this.imageIndex,
  });
  List<String> imageList = [
    'assets/images/profileSS.png',
    'assets/images/SS2.png',
    'assets/images/SS3.png',
    'assets/images/SS4.png',
    'assets/images/SS5.png'
  ];
  List<String> titleList = [
    AppTexts.fillDetails,
    AppTexts.soManyStories,
    AppTexts.readWithAudio,
    AppTexts.exploreStory,
    AppTexts.subscribenEnjoyAllStories
  ];
}

//class ImageIndexInitial extends ImageIndexState {}
