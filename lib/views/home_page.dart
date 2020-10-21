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
  final loremIpsum = <Widget>[];

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 10; i++) {
      loremIpsum.add(Container(
        width: double.infinity,
        height: 80,
        margin: EdgeInsets.only(top: 40),
        child: Text(
          "Lorem ipsum odor amet, consectetuer adipiscing elit. Integer dolor enim sem aenean vel. Massa leo aliquam finibus montes",
          style: TextStyle(fontSize: 24),
        ),
      ));
    }

    return Scaffold(
      drawer: Drawer(
          child: Column(children: [
        UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                'https://avatars1.githubusercontent.com/u/28494067?s=460&u=25aa03949bbf77de836775bda8436c1136943c71&v=4'),
          ),
          accountName: Text('Reinan Gabriel'),
          accountEmail: Text('reinangabriel@gmail.com'),
        ),
        ListTile(
          title: Text('Home'),
          leading: Icon(Icons.home),
        ),
        ListTile(
          title: Text('Loja'),
          leading: Icon(Icons.store),
        ),
        ListTile(
          title: Text('Perfil'),
          leading: Icon(Icons.verified_user),
        ),
        ListTile(
          title: Text('Amigos'),
          leading: Icon(Icons.supervised_user_circle),
        ),
        ListTile(
          title: Text('Sair'),
          leading: Icon(Icons.exit_to_app),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
      ])),
      appBar: AppBar(
        title: Text("Hello"),
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(scrollDirection: Axis.vertical, children: [
          Column(
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
              ),
            ],
          ),
          ...loremIpsum,
        ]),
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
