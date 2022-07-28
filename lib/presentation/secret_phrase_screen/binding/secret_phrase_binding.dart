import '../controller/secret_phrase_controller.dart';
import 'package:get/get.dart';

class SecretPhraseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecretPhraseController());
  }
}
