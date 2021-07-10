import 'package:flutter/material.dart';

class AppTheme with ChangeNotifier {
  bool isDarkMode = false;
  getDarkMode() => this.isDarkMode;
  void changeDarkMode(isDarkMode) {
    this.isDarkMode = isDarkMode;
    notifyListeners();
  }
}