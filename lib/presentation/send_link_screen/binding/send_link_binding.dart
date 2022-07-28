import '../controller/send_link_controller.dart';
import 'package:get/get.dart';

class SendLinkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendLinkController());
  }
}
