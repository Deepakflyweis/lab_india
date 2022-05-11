import 'package:flutter/material.dart';
import 'package:lab_india/modules/nav_bar_module/bottom_nav_bar_screen.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/story_details_module/story_details_screen.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/story_details_module/story_screens/story1/story_1_page.dart';

import 'package:lab_india/modules/signin_module/email_or_mobile_screen.dart';
import 'package:lab_india/modules/signup_module/signup1_screen.dart';
import 'package:lab_india/modules/splash_module/get_started_screen.dart';
import 'package:lab_india/modules/splash_module/signIn_signup_screen.dart';
import 'package:lab_india/modules/splash_module/splash_screen2.dart';
import 'package:lab_india/modules/subscriptions_module_screen/golden_package_renew/subscription_golden_renew.dart';
import 'package:lab_india/routes/invalid_route.dart';
import 'package:lab_india/routes/routing_constant.dart';
import '../modules/nav_bar_module/profile_module/add_card_module/add_card_screen.dart';
import '../modules/signin_module/otp_signin_screen.dart';
import '../modules/signup_module/signup2_screen.dart';
import '../modules/signup_module/signup3_screen.dart';
import '../modules/signup_module/signup4_screen.dart';
import '../modules/splash_module/splash_screen1.dart';
import '../modules/splash_module/splash_screen3.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case splashScreenRoute:
      return MaterialPageRoute(builder: (context) => SplashScreen1());
    case splash2ScreenRoute:
      return MaterialPageRoute(builder: (context) => SplashScreen2());
    case splash3ScreenRoute:
      return MaterialPageRoute(builder: (context) => SplashScreen3());
    case getStartedScreenRoute:
      return MaterialPageRoute(builder: (context) => GetStartedScreen());
    case signinOrSignUpScreenRoute:
      return MaterialPageRoute(builder: (context) => SignInSignUpScreen());
    case enterEmailorMobileScreenRoute:
      return MaterialPageRoute(
          builder: (context) => EnterEmailOrMobileScreen());
    case otpSignInScreenRoute:
      return MaterialPageRoute(builder: (context) => OtpLoginScreen( ));
    case signUp1ScreenRoute:
      return MaterialPageRoute(builder: (context) => SignUp1Screen());
    case signUp2ScreenRoute:
      return MaterialPageRoute(builder: (context) => SignUp2Screen());
    case signUp3ScreenRoute:
      return MaterialPageRoute(builder: (context) => SignUp3Screen());
    case signUp4ScreenRoute:
      return MaterialPageRoute(builder: (context) => SignUp4Screen());
    case bottomNavBarScreenRoute:
      return MaterialPageRoute(builder: (context) => BottomNavBarScreen());
    case addNewCardsScreenRoute:
      return MaterialPageRoute(builder: (context) => AddCardScreen());
    case storyDetailsScreenRoute:
      return MaterialPageRoute(builder: (context) => StoryDetailsScreen());
    case goldenRenewScreenRoute:
      return MaterialPageRoute(builder: (context) => const GoldenRenew());
      case storyScreenRoute:
      return MaterialPageRoute(builder: (context) => Story1Page());

    default:
      return MaterialPageRoute(
          builder: (context) => UndefinedRouteView(
                name: settings.name!,
              ));
  }
}
