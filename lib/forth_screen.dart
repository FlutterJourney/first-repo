//import 'dart:html';



import 'package:flutter/material.dart';

class ForthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Text('Second Screen')
          ],
        ),
      ),
    );
  }

  /*final pair;
  SecondScreen(this.pair);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Word meaning'),
      ),
      body: Center(
        child: Text(
          pair.toString(),
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }*/
}
