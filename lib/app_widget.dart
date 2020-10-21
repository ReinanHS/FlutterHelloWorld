import 'package:flutter/material.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}
