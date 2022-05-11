import 'package:flutter/material.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/home_screen.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/story_details_module/story_details_screen.dart';
import 'package:lab_india/modules/nav_bar_module/subscriptions_module/packages_screen.dart';
import 'package:lab_india/routes/routing_constant.dart';

import '../navigator_keys.dart';

class SubscriptionsNavigator extends StatelessWidget {
  SubscriptionsNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: subcriptionsNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return PackagesScreen();
                default:
                  return PackagesScreen();
              }
            });
      },
    );
  }
}
