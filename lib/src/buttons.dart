import 'package:flutter/material.dart';



class Buttons extends StatelessWidget {
  final ValueChanged<int> onChanged;
  const Buttons({Key key, this.onChanged}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RaisedButton(
            color: Colors.pink,
            onPressed: () {
              //_changed();
            },
            child: Text(
              'Button1',
              style: TextStyle(fontSize: 20),
            ),
          ),
          RaisedButton(
            color: Colors.white,
            onPressed: () {
              onChanged(2);
            },
            child: Text(
              'Button2',
              style: TextStyle(fontSize: 20),
            ),
          ),
          RaisedButton(
            color: Colors.greenAccent,
            onPressed: () {
              onChanged(3);
            },
            child: Text(
              'Button3',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
