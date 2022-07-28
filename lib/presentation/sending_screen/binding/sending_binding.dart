import '../controller/sending_controller.dart';
import 'package:get/get.dart';

class SendingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendingController());
  }
}
