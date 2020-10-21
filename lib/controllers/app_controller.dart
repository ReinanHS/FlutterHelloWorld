import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  bool isDarkTheme = false;

  static AppController instance = AppController();

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
