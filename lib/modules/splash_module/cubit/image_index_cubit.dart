import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_india/constants/app_texts.dart';
import 'package:lab_india/modules/splash_module/get_started_screen.dart';
import 'package:lab_india/routes/routing_constant.dart';
import 'package:meta/meta.dart';

part 'image_index_state.dart';

class ImageIndexCubit extends Cubit<ImageIndexState> {
  ImageIndexCubit() : super(ImageIndexState(imageIndex: 0));

  void increment(BuildContext context) {
    if (state.imageIndex < state.imageList.length - 1) {
      emit(ImageIndexState(imageIndex: state.imageIndex + 1));
    } else {
      Navigator.pushNamed(context, getStartedScreenRoute);
    }
  }

  void decrement() => emit(ImageIndexState(imageIndex: state.imageIndex - 1));
}
