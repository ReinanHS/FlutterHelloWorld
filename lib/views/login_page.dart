import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloWorld/views/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        leading: Icon(Icons.login),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(40),
            child: Text(
              'Login no Sistema',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (text) {
                  email = text;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email")),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onChanged: (text) {
                  password = text;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Senha")),
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                onPressed: () {
                  if (email == 'admin@gmail.com' && password == '123456') {
                    Navigator.of(context).pushReplacementNamed('/home');
                  } else
                    print('501- Error');
                },
                child: Text('Fazer Login'),
              ))
        ]),
      ),
    );
  }
}
