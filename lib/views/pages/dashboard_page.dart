import 'package:flutter/material.dart';
import 'package:helloWorld/controllers/dasboard_controller.dart';
import 'package:helloWorld/views/components/header_widget.dart';

class DashboardPage extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: DasboardController.instance,
      builder: (BuildContext context, Widget child) {
        return Scaffold(
          drawer: Drawer(
            child: HeaderWidget(
              DasboardController.instance.user,
              DasboardController.instance.headerModel,
            ),
          ),
          appBar: AppBar(
            title: Text('Dashboard'),
          ),
          body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: DasboardController.instance.users.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://blog.img.com.br/wp-content/uploads/2018/02/avatar-1577909_640.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10, top: 10),
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(DasboardController
                                    .instance.users[index].name),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(DasboardController
                                    .instance.users[index].email),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
