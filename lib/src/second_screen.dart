import 'package:flutter/material.dart';
import 'package:studyjam/widgets/menu.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white70,
      //drawerScrimColor: Colors.redAccent,
      drawer: MyDrawer(),
      //endDrawer: IconButton(icon: Icon(Icons.directions_bus),),
      appBar: AppBar(
        //leading: Icon(Icons.directions_bus),
        title: Text('Second Screen'),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white54,
              ),
              onPressed: () => print('Search Clicked')),
          IconButton(
              icon: Icon(
                Icons.notification_important,
                color: Colors.white54,
              ),
              onPressed: () => print('Notification Clicked')),
          IconButton(
              icon: Icon(
                Icons.directions_bus,
                color: Colors.white54,
              ),
              onPressed: () => print('Bus Clicked')),
          //IconButton(icon: Icon(Icons.print ), onPressed: null)
        ],
        elevation: 10,
        titleSpacing: 28,
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            //top: 100,
            child: Text('Second Screen',style: TextStyle(fontSize: 20,),),
          ),
          Align(
            //height: 200,
            //width: 200,
            alignment: Alignment.center + Alignment(0, 0.15),
            child: RaisedButton(
              onPressed: (){},
              color: Colors.orange
            ),
          ),
        ],
        //overflow: Overflow.visible,
      ),
    );
  }
}