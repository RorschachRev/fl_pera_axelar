import 'package:get/get.dart';
import 'wallets_item_model.dart';

class WalletsModel {
  RxList<WalletsItemModel> walletsItemList =
      RxList.filled(3, WalletsItemModel());
}
