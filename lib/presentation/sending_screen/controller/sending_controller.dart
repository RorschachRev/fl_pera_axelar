import '/core/app_export.dart';
import 'package:application1/presentation/sending_screen/models/sending_model.dart';

class SendingController extends GetxController {
  Rx<SendingModel> sendingModelObj = SendingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
