import 'package:flutter/material.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/home_screen.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/story_details_module/story_details_screen.dart';
import 'package:lab_india/modules/nav_bar_module/navigator_keys.dart';
import 'package:lab_india/modules/nav_bar_module/settings_module/settings_screen.dart';
import 'package:lab_india/routes/routing_constant.dart';

class SettingsNavigator extends StatelessWidget {
  const SettingsNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: settingsNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return SettingsScreen();
                default:
                  return SettingsScreen();
              }
            });
      },
    );
  }
}
