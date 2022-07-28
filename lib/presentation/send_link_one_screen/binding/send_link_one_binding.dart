import '../controller/send_link_one_controller.dart';
import 'package:get/get.dart';

class SendLinkOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendLinkOneController());
  }
}
