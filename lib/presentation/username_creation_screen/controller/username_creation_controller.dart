import '/core/app_export.dart';
import 'package:application1/presentation/username_creation_screen/models/username_creation_model.dart';

class UsernameCreationController extends GetxController {
  Rx<UsernameCreationModel> usernameCreationModelObj =
      UsernameCreationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
