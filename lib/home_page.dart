import 'package:flutter/material.dart';

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
      body: Center(
        child: GestureDetector(
            child: Text(
              "Contador $cont",
              style: TextStyle(color: Colors.blue, fontSize: 45),
            ),
            onTap: () {
              setState(() {
                cont++;
              });
            }),
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
