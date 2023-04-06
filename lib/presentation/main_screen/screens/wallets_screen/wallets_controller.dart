import 'package:application1/core/app_export.dart';

class WalletsController extends GetxController {
  RxInt activeWallet = (0).obs;

  @override
  void onInit() {
    super.onInit();
    wallets[0].AddToken("ETH", "Ethereum", 100, 2.8);
    wallets[0].AddToken("BTC", "Bitcoin", 1000, 2.9);
    wallets[1].AddToken("USDT", "Tether", 20, 1.0);
  }

  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
