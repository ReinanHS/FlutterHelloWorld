import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  String email;
  String password;

  Widget _body() {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
            width: 150, child: Image.asset('assets/images/example-logo.png')),
        Container(
          padding: EdgeInsets.all(40),
          child: Text(
            'Login no Sistema',
            style: TextStyle(
                fontSize: 34, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
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
                        if (email == 'admin@gmail.com' &&
                            password == '123456') {
                          Navigator.of(context).pushReplacementNamed('/home');
                        } else
                          print('501- Error');
                      },
                      child: Text('Fazer Login'),
                      color: Colors.red,
                      textColor: Colors.white,
                    ))
              ],
            ),
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Login'),
        leading: Icon(Icons.login),
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/lake-5011715_1920.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.black.withOpacity(0.3),
          ),
          _body(),
        ],
      ),
    );
  }
}
