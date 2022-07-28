import 'package:get/get.dart';
import '../presentation/main_screen.dart';
import '../presentation/welcome_screen/welcome_screen_main.dart';
import '../presentation/welcome_screen/secret_phrase_screen.dart';
import '../presentation/welcome_screen/name_password_screen.dart';
import '../presentation/welcome_screen/username_creation_screen.dart';

class AppRoutes {
  static String mainScreen = '/main_screen';
  static String welcomeScreen = '/welcome_screen';
  static String secretPhrasesScreen = '/secret_phrases';
  static String namePasswordScreen = '/name_password';
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
      name: namePasswordScreen,
      page: () => NamePasswordScreen(),
    ),
    GetPage(
      name: usernameCreationScreen,
      page: () => UsernameCreationScreen(),
    ),
  ];
}
