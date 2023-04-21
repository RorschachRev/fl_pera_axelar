import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class MnemonicPhrase {
  Future<List<String>> GenerateSecretPhrase() async {
    List<String> lines = <String>[];
    String data = await rootBundle.loadString('assets/english.txt');
    LineSplitter.split(data).forEach((line) => lines.add('$line'));
    lines.shuffle();
    List<String> words = lines.sublist(0, 9);
    print(words);
    return words;
  }
}