class TokenItem {
  String name = "";
  String fullName = "";
  double balanceUSD = 0.0;
  double balance = 0.0;
  TokenItem(String name, String fullName, double balanceUSD, double balance) {
    this.fullName = fullName;
    this.name = name;
    this.balanceUSD = balanceUSD;
    this.balance = balance;
  }
}
class WalletItem {
  double walletBalanceUSD = 0.0;
  double walletBalanceBTC = 0.0;
  String name = "";
  late List<TokenItem> tokens;
  WalletItem(String name, double walletBalanceUSD, double walletBalanceBTC) {
    this.name = name;
    this.walletBalanceBTC = walletBalanceBTC;
    this.walletBalanceUSD = walletBalanceUSD;
    tokens = List<TokenItem>.empty(growable: true);
  }
  AddToken(String name, String fullName, double balanceUSD, double balance) {
    tokens.add(TokenItem(name, fullName, balanceUSD, balance));
  }
}

List<String> chains = ["chain1", "chain2", "chain3"];
List<WalletItem> wallets = List<WalletItem>.generate(2, (index) =>
    WalletItem("Wallet 0x3adc..." + index.toString(), 10.0, 1.0));

enum hiringStatus {looking_for_work, hiring, hide_status}
class UserProfile {
  int id = 0;
  String first_name = "";
  String last_name = "";
  String about_me = "";
  hiringStatus hiring_status = hiringStatus.looking_for_work;
  String profile_photo_path = "";
  String education = "";
  String career = "";
  List<int> friends = [];
  UserProfile(String first_name, String last_name,
      String about_me, var hiring_status, String profile_photo_path,
      String education, String career, int id, List<int> friends) {
    this.first_name = first_name;
    this.last_name = last_name;
    this.about_me = about_me;
    this.hiring_status = hiring_status as hiringStatus;
    this.profile_photo_path = profile_photo_path;
    this.education = education;
    this.career = career;
    this.id = id;
    this.friends = friends;
  }
}
UserProfile user = UserProfile(
    "Agent", "Smith", "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh ", hiringStatus.looking_for_work,
    'assets/images/profiles_screen/img_avatar_agent.png', "School of secret agent", "AWL3", 0, [1, 2]);

List<UserProfile> users = [user, UserProfile("John", "Anderson", "About me 2", hiringStatus.hiring, 'assets/images/profiles_screen/img_avatar_neo.png',
    "School 2", "None", 1, [0]), UserProfile("Peter", "Stevens", "About me 3", hiringStatus.hiring, 'assets/images/profiles_screen/img_avatar_peter.png',
    "School 2", "None", 2, [0])];