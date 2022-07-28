import '../controller/sending_completed_controller.dart';
import 'package:get/get.dart';

class SendingCompletedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendingCompletedController());
  }
}
