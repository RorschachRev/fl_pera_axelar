import 'dart:math';

import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

bool hasLoggedIn = false;

class TokenItem {
  String name = "";
  double balanceUSD = 0.0;
  double balance = 0.0;
  TokenItem(String name, double balanceUSD, double balance) {
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
    tokens = List<TokenItem>.empty();
  }
  AddToken(String name, double balanceUSD, double balance) {
    tokens.add(TokenItem(name, balanceUSD, balance));
  }
}

List<String> chains = ["chain1", "chain2", "chain3"];
List<WalletItem> wallets = List<WalletItem>.generate(2, (index) =>
    WalletItem("Wallet 0x3adc..." + index.toString(), 10.0, 1.0));