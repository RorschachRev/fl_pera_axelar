import 'package:get/get.dart';
import 'package:application1/presentation/main_screen/main_screen.dart';
import 'package:application1/presentation/welcome_screen/welcome_screen_main.dart';
import 'package:application1/presentation/welcome_screen/secret_phrase_screen.dart';
import 'package:application1/presentation/welcome_screen/username_creation_screen.dart';
import 'package:application1/presentation/sending_screen/sending_screen.dart';
import 'package:application1/presentation/sending_screen/selecting_currency_screen.dart';
import 'package:application1/presentation/sending_screen/checkout_screen.dart';
import 'package:application1/presentation/sending_screen/sending_completed_screen.dart';
import 'package:application1/presentation/request_screen/request_preferences.dart';
import 'package:application1/presentation/request_screen/selecting_usd_screen.dart';
import 'package:application1/presentation/request_screen/send_link_usd_screen.dart';


class AppRoutes {
  static String mainScreen = '/main_screen';
  static String welcomeScreen = '/welcome_screen';
  static String secretPhrasesScreen = '/secret_phrases';
  static String usernameCreationScreen = '/username_creation_screen';
  static String sendingScreen = '/sending/sending_screen';
  static String selectingCurrencyScreen = '/sending/selecting_currency_screen';
  static String checkoutScreen = '/sending/checkout_screen';
  static String sendingCompletedScreen = '/sending/completed';
  static String requestPreferencesScreen = '/request/request_screen';
  static String selectingUSDScreen = '/request/usd_screen';
  static String sendLinkUSDScreen = '/request/usd_link';

  static List<GetPage> pages = [
    GetPage(
        name: secretPhrasesScreen,
        page: () => SecretPhraseScreen(),
        bindings: [
          SecretPhraseBinding(),
        ]
    ),
    GetPage(
        name: mainScreen,
        page: () => MainScreen()
    ),
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
    ),
    GetPage(
      name: usernameCreationScreen,
      page: () => UsernameCreationScreen(),
    ),
    GetPage(
        name: sendingScreen,
        page: () => SendingScreen(),
        bindings: [
          SendingBinding()
        ]
    ),
    GetPage(
        name: selectingCurrencyScreen,
        page: () => SelectingCurrencyScreen(),
        bindings: [
          SelectingCurrencyBinding(),
        ]
    ),
    GetPage(
      name: checkoutScreen,
      page: () => CheckoutScreen(),
    ),
    GetPage(
      name: sendingCompletedScreen,
      page: () => SendingCompletedScreen(),
    ),
    GetPage(
      name: requestPreferencesScreen,
      page: () => RequestPreferencesScreen(),
    ),
    GetPage(
      name: selectingUSDScreen,
      page: () => SelectingUSDScreen(),
    ),
    GetPage(
      name: sendLinkUSDScreen,
      page: () => SendLinkUSDScreen(),
    ),
  ];
}
