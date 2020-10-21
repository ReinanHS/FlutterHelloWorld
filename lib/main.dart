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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int cont = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
            child: Text(
              "Contador $cont",
              style: TextStyle(color: Colors.white, fontSize: 45),
            ),
            onTap: () {
              setState(() {
                cont++;
              });
            }),
      ),
    );
  }
}
