import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lab_india/constants/app_colors.dart';
import 'package:lab_india/modules/nav_bar_module/cubit/bottomnavbar_cubit.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/home_screen.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/rating_review/rating_review_screen.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/story_details_module/story_details_screen.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/story_details_module/widgets/review_tile.dart';
import 'package:lab_india/modules/signin_module/email_or_mobile_screen.dart';
import 'package:lab_india/modules/signup_module/signup1_screen.dart';
import 'package:lab_india/modules/splash_module/cubit/image_index_cubit.dart';
import 'package:lab_india/routes/invalid_route.dart';
import 'package:lab_india/routes/routing_constant.dart';
import 'package:sizer/sizer.dart';
import 'package:lab_india/routes/routes.dart' as routes;

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: ((context) => ImageIndexCubit())),
    BlocProvider(create: ((context) => BottomnavbarCubit()))
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'SF Pro Text',
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: AppColors.primarySwatch,
          ),
        ),

        onGenerateRoute: routes.onGenerateRoute,
        initialRoute: splashScreenRoute,
        onUnknownRoute: (settings) => MaterialPageRoute(
            builder: (context) => UndefinedRouteView(name: settings.name!)),


        // routes: {
        //   "/": (context) => EnterEmailOrMobileScreen(),
        // },

      );
    }));
  }
}
