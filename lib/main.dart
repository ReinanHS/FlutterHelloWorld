import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  return runApp(AppWidget(
    title: "Hello World",
  ));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 45),
          ),
        ),
      ),
    );
  }
}
