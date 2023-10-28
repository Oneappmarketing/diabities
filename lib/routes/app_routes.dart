import 'package:john_s_application3/presentation/splash_screen/splash_screen.dart';
import 'package:john_s_application3/presentation/splash_screen/binding/splash_binding.dart';
import 'package:john_s_application3/presentation/on_boarding_one_screen/on_boarding_one_screen.dart';
import 'package:john_s_application3/presentation/on_boarding_one_screen/binding/on_boarding_one_binding.dart';
import 'package:john_s_application3/presentation/on_boarding_two_screen/on_boarding_two_screen.dart';
import 'package:john_s_application3/presentation/on_boarding_two_screen/binding/on_boarding_two_binding.dart';
import 'package:john_s_application3/presentation/on_boarding_three_screen/on_boarding_three_screen.dart';
import 'package:john_s_application3/presentation/on_boarding_three_screen/binding/on_boarding_three_binding.dart';
import 'package:john_s_application3/presentation/splash_one_screen/splash_one_screen.dart';
import 'package:john_s_application3/presentation/splash_one_screen/binding/splash_one_binding.dart';
import 'package:john_s_application3/presentation/splash_two_screen/splash_two_screen.dart';
import 'package:john_s_application3/presentation/splash_two_screen/binding/splash_two_binding.dart';
import 'package:john_s_application3/presentation/splash_three_screen/splash_three_screen.dart';
import 'package:john_s_application3/presentation/splash_three_screen/binding/splash_three_binding.dart';
import 'package:john_s_application3/presentation/splash_four_screen/splash_four_screen.dart';
import 'package:john_s_application3/presentation/splash_four_screen/binding/splash_four_binding.dart';
import 'package:john_s_application3/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:john_s_application3/presentation/home_screen_container_screen/binding/home_screen_container_binding.dart';
import 'package:john_s_application3/presentation/profile_two_screen/profile_two_screen.dart';
import 'package:john_s_application3/presentation/profile_two_screen/binding/profile_two_binding.dart';
import 'package:john_s_application3/presentation/profile_health_info_screen/profile_health_info_screen.dart';
import 'package:john_s_application3/presentation/profile_health_info_screen/binding/profile_health_info_binding.dart';
import 'package:john_s_application3/presentation/my_report_tab_container_screen/my_report_tab_container_screen.dart';
import 'package:john_s_application3/presentation/my_report_tab_container_screen/binding/my_report_tab_container_binding.dart';
import 'package:john_s_application3/presentation/my_reminders_screen/my_reminders_screen.dart';
import 'package:john_s_application3/presentation/my_reminders_screen/binding/my_reminders_binding.dart';
import 'package:john_s_application3/presentation/saved_meal_screen/saved_meal_screen.dart';
import 'package:john_s_application3/presentation/saved_meal_screen/binding/saved_meal_binding.dart';
import 'package:john_s_application3/presentation/settings_screen/settings_screen.dart';
import 'package:john_s_application3/presentation/settings_screen/binding/settings_binding.dart';
import 'package:john_s_application3/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:john_s_application3/presentation/privacy_policy_screen/binding/privacy_policy_binding.dart';
import 'package:john_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:john_s_application3/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onBoardingOneScreen = '/on_boarding_one_screen';

  static const String onBoardingTwoScreen = '/on_boarding_two_screen';

  static const String onBoardingThreeScreen = '/on_boarding_three_screen';

  static const String splashOneScreen = '/splash_one_screen';

  static const String splashTwoScreen = '/splash_two_screen';

  static const String splashThreeScreen = '/splash_three_screen';

  static const String splashFourScreen = '/splash_four_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String mealScreenPage = '/meal_screen_page';

  static const String explorePage = '/explore_page';

  static const String profileOnePage = '/profile_one_page';

  static const String profileTwoScreen = '/profile_two_screen';

  static const String profileHealthInfoScreen = '/profile_health_info_screen';

  static const String myReportPage = '/my_report_page';

  static const String myReportTabContainerScreen =
      '/my_report_tab_container_screen';

  static const String myRemindersScreen = '/my_reminders_screen';

  static const String savedMealScreen = '/saved_meal_screen';

  static const String settingsScreen = '/settings_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onBoardingOneScreen,
      page: () => OnBoardingOneScreen(),
      bindings: [
        OnBoardingOneBinding(),
      ],
    ),
    GetPage(
      name: onBoardingTwoScreen,
      page: () => OnBoardingTwoScreen(),
      bindings: [
        OnBoardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onBoardingThreeScreen,
      page: () => OnBoardingThreeScreen(),
      bindings: [
        OnBoardingThreeBinding(),
      ],
    ),
    GetPage(
      name: splashOneScreen,
      page: () => SplashOneScreen(),
      bindings: [
        SplashOneBinding(),
      ],
    ),
    GetPage(
      name: splashTwoScreen,
      page: () => SplashTwoScreen(),
      bindings: [
        SplashTwoBinding(),
      ],
    ),
    GetPage(
      name: splashThreeScreen,
      page: () => SplashThreeScreen(),
      bindings: [
        SplashThreeBinding(),
      ],
    ),
    GetPage(
      name: splashFourScreen,
      page: () => SplashFourScreen(),
      bindings: [
        SplashFourBinding(),
      ],
    ),
    GetPage(
      name: homeScreenContainerScreen,
      page: () => HomeScreenContainerScreen(),
      bindings: [
        HomeScreenContainerBinding(),
      ],
    ),
    GetPage(
      name: profileTwoScreen,
      page: () => ProfileTwoScreen(),
      bindings: [
        ProfileTwoBinding(),
      ],
    ),
    GetPage(
      name: profileHealthInfoScreen,
      page: () => ProfileHealthInfoScreen(),
      bindings: [
        ProfileHealthInfoBinding(),
      ],
    ),
    GetPage(
      name: myReportTabContainerScreen,
      page: () => MyReportTabContainerScreen(),
      bindings: [
        MyReportTabContainerBinding(),
      ],
    ),
    GetPage(
      name: myRemindersScreen,
      page: () => MyRemindersScreen(),
      bindings: [
        MyRemindersBinding(),
      ],
    ),
    GetPage(
      name: savedMealScreen,
      page: () => SavedMealScreen(),
      bindings: [
        SavedMealBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: privacyPolicyScreen,
      page: () => PrivacyPolicyScreen(),
      bindings: [
        PrivacyPolicyBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
