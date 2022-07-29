import 'package:get/get.dart';
import 'package:application1/presentation/main_screen/main_screen.dart';
import 'package:application1/presentation/welcome_screen/welcome_screen_main.dart';
import 'package:application1/presentation/welcome_screen/secret_phrase_screen.dart';
import 'package:application1/presentation/welcome_screen/username_creation_screen.dart';

class AppRoutes {
  static String mainScreen = '/main_screen';
  static String welcomeScreen = '/welcome_screen';
  static String secretPhrasesScreen = '/secret_phrases';
  static String usernameCreationScreen = '/username_creation_screen';

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
  ];
}
