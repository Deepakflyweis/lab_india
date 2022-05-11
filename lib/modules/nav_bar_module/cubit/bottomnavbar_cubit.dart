import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_india/constants/app_enums.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/home_navigator.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/home_screen.dart';
import 'package:lab_india/modules/nav_bar_module/profile_module/profile_navigator.dart';
import 'package:lab_india/modules/nav_bar_module/profile_module/profile_screen.dart';
import 'package:lab_india/modules/nav_bar_module/settings_module/settings_navigator.dart';
import 'package:lab_india/modules/nav_bar_module/subscriptions_module/subscriptions_navigator.dart';

import '../settings_module/settings_screen.dart';
import '../subscriptions_module/packages_screen.dart';

part 'bottomnavbar_state.dart';

class BottomnavbarCubit extends Cubit<BottomnavbarState> {
  BottomnavbarCubit() : super(BottomnavbarState(index: 1));

  void channgeNavBarIndex(int index) {
    emit(BottomnavbarState(index: index));
  }
}
