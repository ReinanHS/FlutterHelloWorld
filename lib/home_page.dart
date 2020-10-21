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
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Contador: $cont",
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            FlatButton(
                onPressed: () {
                  setState(() {
                    cont++;
                  });
                },
                color: Colors.blueAccent,
                textColor: Colors.white,
                child: Text('Aumentar')),
            CustomSwitch(),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: 50,
                  color: Colors.blueAccent,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: 50,
                  color: Colors.yellowAccent,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: 50,
                  color: Colors.indigo,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: 50,
                  color: Colors.green,
                ),
              ],
            )
          ],
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

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
