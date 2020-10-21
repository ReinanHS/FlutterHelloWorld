import 'package:flutter/material.dart';
import 'package:helloWorld/controllers/app_controller.dart';
import 'package:helloWorld/views/home_page.dart';
import 'package:helloWorld/views/login_page.dart';

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
              initialRoute: '/',
              routes: {
                '/': (context) => LoginPage(),
                '/home': (context) => HomePage(),
              });
        });
  }
}
