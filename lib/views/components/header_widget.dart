import 'package:flutter/material.dart';
import 'package:helloWorld/models/user_model.dart';

class HeaderWidget extends StatelessWidget {
  final UserModel _user;
  final List<Widget> _menu;

  HeaderWidget(
    this._user,
    this._menu,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(_user.getAvatar()),
          ),
          accountName: Text(_user.name),
          accountEmail: Text(_user.email),
        ),
        ..._menu,
      ],
    );
  }
}
