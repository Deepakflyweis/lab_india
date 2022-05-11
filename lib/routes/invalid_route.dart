import 'package:flutter/material.dart';
import 'package:lab_india/constants/app_texts.dart';

class UndefinedRouteView extends StatelessWidget {
  const UndefinedRouteView({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppTexts.invalidRoute + " " + name),
      ),
    );
  }
}
