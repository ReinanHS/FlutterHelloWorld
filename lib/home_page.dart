import 'package:flutter/material.dart';
import 'package:helloWorld/controllers/app_controller.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Container(
        width: 200,
        height: 200,
        color: Colors.amber,
        child: Align(
          alignment: AlignmentDirectional.center,
          child: Switch(
            value: AppController.instance.isDarkTheme,
            onChanged: (value) {
              AppController.instance.changeTheme();
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cont++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
