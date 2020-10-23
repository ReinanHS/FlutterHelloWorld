import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cards_widget.dart';

class DasboardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          color: Colors.cyan,
          child: Image.asset(
            'assets/images/books-5583300_1920.jpg',
            fit: BoxFit.fitWidth,
          ),
        ),
        CardsWiget(),
      ],
    );
  }
}
