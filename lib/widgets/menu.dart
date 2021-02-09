//import 'dart:html';

import 'package:flutter/material.dart';
import 'my_menu_items.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('test test - Flutter developer'),
              accountEmail: Text('test@gmail.com'),
              //currentAccountPicture: Image.network('https://via.placeholder.com/600/24f355'),),
              //currentAccountPicture: Image.asset('assets/images/MyPicture.png'),),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.white,
            ),
            MyMenuItems()
          ],
        ),
      ),
    );
  }
}

////////////////////////////////////////////////////////////
//////////////// DrawerHeader with circleAvatar image //////////////////
//////////////////////////////////////////////////////////
/*DrawerHeader(
decoration: BoxDecoration(
color: Colors.blue,
),
child: Stack(
//alignment: Alignment.centerLeft,
children: [

Align(
alignment: Alignment.centerLeft,
child: CircleAvatar(
//backgroundImage: FileImage(),
//backgroundImage: NetworkImage('https://lh6.googleusercontent.com/-WujaSwWmII4/AAAAAAAAAAI/AAAAAAAAEKI/n4Y2c2YxJjE/s172-c/photo.jpg'),
radius: 50,
),
),
Align(
alignment: Alignment.centerRight,
child: Text('Said Mehenni',
style:TextStyle(fontSize: 20.0,color: Colors.white)
,),
),
Align(
alignment: Alignment.centerRight + Alignment(0, .3),
child: Text('Flutter Developper',
style: TextStyle(color: Colors.white70,),
),
),
Align(
alignment: Alignment.centerRight + Alignment(0, .8),
child: Container(
decoration: BoxDecoration(
border: Border.all(color: Colors.white),
borderRadius: BorderRadius.circular(15.0),
),
child: Padding(
padding: const EdgeInsets.all(3.0),
child: Text('verified',style: TextStyle(
color: Colors.white
),),
),
)
),

],
))*/
