import '../controller/username_creation_controller.dart';
import 'package:get/get.dart';

class UsernameCreationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UsernameCreationController());
  }
}
