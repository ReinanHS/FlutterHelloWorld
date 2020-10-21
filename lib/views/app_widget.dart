import 'package:flutter/material.dart';
import 'package:helloWorld/controllers/app_controller.dart';
import 'package:helloWorld/views/login_page.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (BuildContext context, Widget child) {
          return MaterialApp(
            theme: ThemeData(
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            home: LoginPage(),
          );
        });
  }
}
