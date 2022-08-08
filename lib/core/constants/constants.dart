import 'dart:math';

import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

bool hasLoggedIn = false;

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

List<String> secretPhrases = ["phrase1", "phrase2", "phrase3", "phrase4"];

enum hiringStatus {looking_for_work, hiring, hide_status}
class UserProfile {
  String first_name = "";
  String last_name = "";
  String about_me = "";
  hiringStatus hiring_status = hiringStatus.looking_for_work;
  String profile_photo_path = "";
  String education = "";
  String career = "";

  UserProfile(String first_name, String last_name,
      String about_me, var hiring_status, String profile_photo_path,
      String education, String career) {
    this.first_name = first_name;
    this.last_name = last_name;
    this.about_me = about_me;
    this.hiring_status = hiring_status as hiringStatus;
    this.profile_photo_path = profile_photo_path;
    this.education = education;
    this.career = career;
  }
}
UserProfile user = UserProfile(
    "Agent", "Smith", "About me text", hiringStatus.looking_for_work,
    'assets/images/profiles_screen/img_avatar_agent.png', "School of secret agent", "AWL3");