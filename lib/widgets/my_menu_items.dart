import 'package:flutter/material.dart';
import 'package:studyjam/src/home_screen.dart';
import 'package:studyjam/src/thitd_screen.dart';
import 'package:studyjam/src/second_screen.dart';


class MyMenuItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 8,
          child: ListTile(
            title: Text(
              'HomeScreen',
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
            leading: Icon(Icons.directions_bus),
            onTap: () {
              Navigator.of(context).pushNamed('/');
            },
          ),
        ),
        Card(
          elevation: 8,
          child: ListTile(
            title: Text(
              'SeconddScreen',
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
            leading: Icon(Icons.add_road),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return SecondScreen();
                  }));
            },
          ),
        ),
        Card(
          elevation: 8,
          child: ListTile(
            title: Text(
              'ThirdScreen',
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
            leading: Icon(Icons.add_road),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                return ThirdScreen();
              }));
            },
          ),
        ),
      ],
    );
  }
}
