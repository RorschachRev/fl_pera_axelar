import 'package:application1/presentation/request_currency_based_screen/request_currency_based_screen.dart';
import 'package:application1/presentation/request_currency_based_screen/binding/request_currency_based_binding.dart';
import 'package:application1/presentation/send_link_screen/send_link_screen.dart';
import 'package:application1/presentation/send_link_screen/binding/send_link_binding.dart';
import 'package:application1/presentation/welcome_screen/welcome_screen.dart';
import 'package:application1/presentation/welcome_screen/binding/welcome_binding.dart';
import 'package:application1/presentation/sending_screen/sending_screen.dart';
import 'package:application1/presentation/sending_screen/binding/sending_binding.dart';
import 'package:application1/presentation/checkout_screen/checkout_screen.dart';
import 'package:application1/presentation/checkout_screen/binding/checkout_binding.dart';
import 'package:application1/presentation/selecting_an_amount_currency_screen/selecting_an_amount_currency_screen.dart';
import 'package:application1/presentation/selecting_an_amount_currency_screen/binding/selecting_an_amount_currency_binding.dart';
import 'package:application1/presentation/request_usd_based_screen/request_usd_based_screen.dart';
import 'package:application1/presentation/request_usd_based_screen/binding/request_usd_based_binding.dart';
import 'package:application1/presentation/username_creation_screen/username_creation_screen.dart';
import 'package:application1/presentation/username_creation_screen/binding/username_creation_binding.dart';
import 'package:application1/presentation/sending_completed_screen/sending_completed_screen.dart';
import 'package:application1/presentation/sending_completed_screen/binding/sending_completed_binding.dart';
import 'package:application1/presentation/send_link_one_screen/send_link_one_screen.dart';
import 'package:application1/presentation/send_link_one_screen/binding/send_link_one_binding.dart';
import 'package:application1/presentation/secret_phrase_screen/secret_phrase_screen.dart';
import 'package:application1/presentation/secret_phrase_screen/binding/secret_phrase_binding.dart';
import 'package:application1/presentation/selecting_currency_dropdown_screen/selecting_currency_dropdown_screen.dart';
import 'package:application1/presentation/selecting_currency_dropdown_screen/binding/selecting_currency_dropdown_binding.dart';
import 'package:application1/presentation/request_preferences_usd_screen/request_preferences_usd_screen.dart';
import 'package:application1/presentation/request_preferences_usd_screen/binding/request_preferences_usd_binding.dart';
import 'package:application1/presentation/selecting_an_amount_currency_one_screen/selecting_an_amount_currency_one_screen.dart';
import 'package:application1/presentation/selecting_an_amount_currency_one_screen/binding/selecting_an_amount_currency_one_binding.dart';
import 'package:application1/presentation/request_currency_on_screen/request_currency_on_screen.dart';
import 'package:application1/presentation/request_currency_on_screen/binding/request_currency_on_binding.dart';
import 'package:application1/presentation/wallets_screen/wallets_screen.dart';
import 'package:application1/presentation/wallets_screen/binding/wallets_binding.dart';
import 'package:application1/presentation/request_preferences_screen/request_preferences_screen.dart';
import 'package:application1/presentation/request_preferences_screen/binding/request_preferences_binding.dart';
import 'package:application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String requestCurrencyBasedScreen = '/request_currency_based_screen';

  static String sendLinkScreen = '/send_link_screen';

  static String welcomeScreen = '/welcome_screen';

  static String sendingScreen = '/sending_screen';

  static String checkoutScreen = '/checkout_screen';

  static String selectingAnAmountCurrencyScreen =
      '/selecting_an_amount_currency_screen';

  static String requestUsdBasedScreen = '/request_usd_based_screen';

  static String usernameCreationScreen = '/username_creation_screen';

  static String sendingCompletedScreen = '/sending_completed_screen';

  static String sendLinkOneScreen = '/send_link_one_screen';

  static String secretPhraseScreen = '/secret_phrase_screen';

  static String selectingCurrencyDropdownScreen =
      '/selecting_currency_dropdown_screen';

  static String requestPreferencesUsdScreen = '/request_preferences_usd_screen';

  static String selectingAnAmountCurrencyOneScreen =
      '/selecting_an_amount_currency_one_screen';

  static String requestCurrencyOnScreen = '/request_currency_on_screen';

  static String walletsScreen = '/wallets_screen';

  static String requestPreferencesScreen = '/request_preferences_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: requestCurrencyBasedScreen,
      page: () => RequestCurrencyBasedScreen(),
      bindings: [
        RequestCurrencyBasedBinding(),
      ],
    ),
    GetPage(
      name: sendLinkScreen,
      page: () => SendLinkScreen(),
      bindings: [
        SendLinkBinding(),
      ],
    ),
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    ),
    GetPage(
      name: sendingScreen,
      page: () => SendingScreen(),
      bindings: [
        SendingBinding(),
      ],
    ),
    GetPage(
      name: checkoutScreen,
      page: () => CheckoutScreen(),
      bindings: [
        CheckoutBinding(),
      ],
    ),
    GetPage(
      name: selectingAnAmountCurrencyScreen,
      page: () => SelectingAnAmountCurrencyScreen(),
      bindings: [
        SelectingAnAmountCurrencyBinding(),
      ],
    ),
    GetPage(
      name: requestUsdBasedScreen,
      page: () => RequestUsdBasedScreen(),
      bindings: [
        RequestUsdBasedBinding(),
      ],
    ),
    GetPage(
      name: usernameCreationScreen,
      page: () => UsernameCreationScreen(),
      bindings: [
        UsernameCreationBinding(),
      ],
    ),
    GetPage(
      name: sendingCompletedScreen,
      page: () => SendingCompletedScreen(),
      bindings: [
        SendingCompletedBinding(),
      ],
    ),
    GetPage(
      name: sendLinkOneScreen,
      page: () => SendLinkOneScreen(),
      bindings: [
        SendLinkOneBinding(),
      ],
    ),
    GetPage(
      name: secretPhraseScreen,
      page: () => SecretPhraseScreen(),
      bindings: [
        SecretPhraseBinding(),
      ],
    ),
    GetPage(
      name: selectingCurrencyDropdownScreen,
      page: () => SelectingCurrencyDropdownScreen(),
      bindings: [
        SelectingCurrencyDropdownBinding(),
      ],
    ),
    GetPage(
      name: requestPreferencesUsdScreen,
      page: () => RequestPreferencesUsdScreen(),
      bindings: [
        RequestPreferencesUsdBinding(),
      ],
    ),
    GetPage(
      name: selectingAnAmountCurrencyOneScreen,
      page: () => SelectingAnAmountCurrencyOneScreen(),
      bindings: [
        SelectingAnAmountCurrencyOneBinding(),
      ],
    ),
    GetPage(
      name: requestCurrencyOnScreen,
      page: () => RequestCurrencyOnScreen(),
      bindings: [
        RequestCurrencyOnBinding(),
      ],
    ),
    GetPage(
      name: walletsScreen,
      page: () => WalletsScreen(),
      bindings: [
        WalletsBinding(),
      ],
    ),
    GetPage(
      name: requestPreferencesScreen,
      page: () => RequestPreferencesScreen(),
      bindings: [
        RequestPreferencesBinding(),
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
      page: () => RequestCurrencyBasedScreen(),
      bindings: [
        RequestCurrencyBasedBinding(),
      ],
    )
  ];
}
