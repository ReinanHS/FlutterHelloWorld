import 'package:flutter/material.dart';

class HeaderModel {
  List<ListTile> menus = [
    ListTile(
      title: Text('Posts'),
      leading: Icon(Icons.post_add),
    ),
    ListTile(
      title: Text('Comments'),
      leading: Icon(Icons.comment),
    ),
    ListTile(
      title: Text('Albums'),
      leading: Icon(Icons.album),
    ),
    ListTile(
      title: Text('Photos'),
      leading: Icon(Icons.phone),
    ),
    ListTile(
      title: Text('Todos'),
      leading: Icon(Icons.info),
    ),
    ListTile(
      title: Text('Users'),
      leading: Icon(Icons.supervised_user_circle),
    ),
    ListTile(
      title: Text('Sair'),
      leading: Icon(Icons.logout),
    ),
  ];
}
