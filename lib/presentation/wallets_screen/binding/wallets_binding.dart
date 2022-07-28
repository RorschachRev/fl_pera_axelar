import '../controller/wallets_controller.dart';
import 'package:get/get.dart';

class WalletsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalletsController());
  }
}
