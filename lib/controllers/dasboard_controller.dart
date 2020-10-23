import 'dart:convert' as convert;
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloWorld/models/address_model.dart';
import 'package:helloWorld/models/header_model.dart';
import 'package:helloWorld/models/user_model.dart';
import 'package:http/http.dart' as http;

class DasboardController extends ChangeNotifier {
  UserModel user = UserModel(
    name: 'Reinan Gabriel',
    username: 'reinanhs',
    email: 'reinangabriel@gmail.com',
    phone: '7991313136',
    address: AddressModel(),
  );

  List<Widget> headerModel = HeaderModel().menus;
  List<UserModel> users = [];

  static DasboardController instance = DasboardController();

  DasboardController() {
    this.getUser();
  }

  void getUser() async {
    var url = 'https://jsonplaceholder.typicode.com/users';

    var response = await http.get(url);

    if (response.statusCode == 200) {
      List list = convert.jsonDecode(response.body);
      this.users = list.map((user) => UserModel.fromJson(user)).toList();
      notifyListeners();
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  String getUserLength() {
    return this.users.length.toString();
  }

  Widget getUsersWidget() {
    if (this.users.isEmpty) {
      return Center(
        child: Text('Nehuma usuario'),
      );
    } else {
      return ListView(
        children: [
          ListTile(
            title: Text('Primary text'),
            leading: Icon(Icons.label),
            trailing: Text('Metadata'),
          ),
        ],
      );
    }
  }
}
