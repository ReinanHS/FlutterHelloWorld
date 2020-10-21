import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  return runApp(Container(
    child: Center(
      child: Text(
        "Hello World",
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.blue, fontSize: 74.0),
      ),
    ),
  ));
}
