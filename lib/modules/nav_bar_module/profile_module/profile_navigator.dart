import 'package:flutter/material.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/home_screen.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/story_details_module/story_details_screen.dart';
import 'package:lab_india/modules/nav_bar_module/navigator_keys.dart';
import 'package:lab_india/modules/nav_bar_module/profile_module/add_card_module/add_card_screen.dart';
import 'package:lab_india/modules/nav_bar_module/profile_module/profile_screen.dart';
import 'package:lab_india/routes/routing_constant.dart';

class ProfileNavigator extends StatelessWidget {
  const ProfileNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: profileNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return ProfileScreen();
                case addNewCardsScreenRoute:
                  return AddCardScreen();
                default:
                  return ProfileScreen();
              }
            });
      },
    );
  }
}
