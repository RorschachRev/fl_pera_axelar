import '/core/app_export.dart';
import 'package:application1/presentation/sending_completed_screen/models/sending_completed_model.dart';

class SendingCompletedController extends GetxController {
  Rx<SendingCompletedModel> sendingCompletedModelObj =
      SendingCompletedModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
