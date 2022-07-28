import 'package:get/get.dart';
import 'secretphrase_item_model.dart';

class SecretPhraseModel {
  RxList<SecretphraseItemModel> secretphraseItemList =
      RxList.generate(12, (index) => SecretphraseItemModel());
}
