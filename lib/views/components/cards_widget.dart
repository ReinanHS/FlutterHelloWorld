import 'package:flutter/material.dart';

class CardsWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Wrap(
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                width: 60,
                child: Column(
                  children: [
                    Icon(
                      Icons.access_alarm,
                      size: 42,
                    ),
                    Text(
                      'Horário',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                width: 60,
                child: Column(
                  children: [
                    Icon(
                      Icons.check,
                      size: 42,
                    ),
                    Text(
                      'Notas',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                width: 60,
                child: Column(
                  children: [
                    Icon(
                      Icons.credit_card,
                      size: 42,
                    ),
                    Text(
                      'Cartei',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                width: 60,
                child: Column(
                  children: [
                    Icon(
                      Icons.access_alarm,
                      size: 42,
                    ),
                    Text(
                      'Horário',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
