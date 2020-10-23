import 'package:flutter/material.dart';
import 'package:helloWorld/controllers/app_controller.dart';
import 'package:helloWorld/views/pages/home_page.dart';
import 'package:helloWorld/views/pages/login_page.dart';
import 'package:helloWorld/views/pages/dashboard_page.dart';

class AppWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (BuildContext context, Widget child) {
          return MaterialApp(
              theme: ThemeData(
                  primaryColor: Color(0xff7ec556),
                  brightness: AppController.instance.isDarkTheme
                      ? Brightness.dark
                      : Brightness.light),
              initialRoute: '/dashboard',
              routes: {
                '/': (context) => LoginPage(),
                '/home': (context) => HomePage(),
                '/dashboard': (context) => DashboardPage(),
              });
        });
  }
}
