import 'package:flutter/material.dart';
import 'package:studyjam/widgets/menu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white70,
      //drawerScrimColor: Colors.redAccent,
      drawer: MyDrawer(),
      //endDrawer: IconButton(icon: Icon(Icons.directions_bus),),
      appBar: AppBar(
        //leading: Icon(Icons.directions_bus),
        title: Text('Home'),
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
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          /*Align(
            //height: 200,
            //width: 200,
            alignment: Alignment.center + Alignment(0, 0.15),
            child: RaisedButton(
              onPressed: (){},
              color: Colors.orange,
            ),
          ),*/
        ],
        //overflow: Overflow.visible,
      ),
    );
  }
}
class ActiveTap extends StatefulWidget {
  @override
  _ActiveTapState createState() => _ActiveTapState();
}

class _ActiveTapState extends State<ActiveTap> {
  bool _active = false;
  void _handle(){
    setState(() {
      _active = !_active;
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handle,
      child: Container(
        decoration: BoxDecoration(
          color: _active ? Colors.green : Colors.red
        ),
        child: Center(
          child: Text(_active ? 'active' : 'inactive'),

        ),
      ),
    );
  }
}



