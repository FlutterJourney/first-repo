import 'package:flutter/material.dart';
import 'package:studyjam/src/buttons.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey keyScaffold;
String _text = "Some text here";
bool _active = false;
  void _changed(){
    setState(() {
      _active = !_active;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text(_active ? 'active' : 'inactive'),
              onTap: _changed,
            )
          ],
        ),
      ),
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Text(_text,style: TextStyle(fontSize: 30,color: Colors.white),),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Buttons(
                  onChanged: (value){
                    setState(() {
                      print(value);
                    });
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



/* ///////////////////////////////////////////////
////////////////     volume up Setlase example
//////////////////////////////////////////////////
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _volume = 30;
  @override
  void _volumeUp(){
    setState(() {
      _volume += 3;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(150.0),
            child: Container(
              child: Column(
                children: [
                  IconButton(
                    color: _volume.isOdd ? Colors.red : Colors.blue,
                    tooltip: 'click to up volume 3',
                    icon: Icon(Icons.volume_up),
                    onPressed:() => _volumeUp(),
                  ),
                  Text('$_volume'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
*/

///////////////  widged change state internally //////////////////
/*
import 'package:flutter/material.dart';
import 'package:studyjam/src/home_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

        ),
        body: Center(
          child: ActiveTap(),
        ),
      )
    );
  }
}
*/

/*/////////////////  Study jam 2   /////////////////////////
import 'dart:convert';
//import 'package:studyjam/src/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:studyjam/forth_screen.dart';
import 'package:studyjam/src/home_screen.dart';
import 'package:studyjam/src/second_screen.dart';
import 'package:studyjam/src/thitd_screen.dart';
import 'package:studyjam/utils/theme.dart';

//import './src/home_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myThemeData,
      //home: HomeScreen(),
      initialRoute:'/',
      routes: {
        '/': (context) => HomeScreen(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
      },
    );
  }
}
*/

//////////////////////////////////////////////////////////////
/*
import 'package:flutter/rendering.dart';
import 'package:studyjam/src/article.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// application entry
void main() => runApp(MyApp(10));

class MyApp extends StatelessWidget {
  final j;
  MyApp(this.j);
  @override
  Widget build(BuildContext context) {
    print(j);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override

  _MyHomePageState createState() => _MyHomePageState(5);

}

class _MyHomePageState extends State<MyHomePage>{
  List<Article> _articles = articles;
  final i;
  _MyHomePageState(this.i);

  @override
  Widget build(BuildContext context) {
    print(i);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     content: Text('Hello Refrech indicator',
          //       style: TextStyle(fontSize: 20),
          //     ),
          //     backgroundColor: Colors.redAccent,
          //   ),
          // );
          await Future.delayed(Duration(seconds: 1));
          setState(() {
            _articles.removeAt(0);
          });
        },
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: _articles.map(_buildItem).toList(),
        ),
      ),
      //backgroundColor: Colors.lightGreen,
    );
  }

  Widget _buildItem(article) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ExpansionTile(
        //tileColor: Colors.orangeAccent,
        title: Text(
          article.text,
          style: TextStyle(fontSize: 25),
        ),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "${article.commentsCount} comments",
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Elevator',
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.launch,
                  size: 32,
                ),
                onPressed: () async {
                  final fakeUrl = "http://${article.domain}";
                  if (await canLaunch(fakeUrl)) {
                    launch(fakeUrl);
                  }
                },
                //child: Text("OPEN",style: TextStyle(fontSize: 20),),
                color: Colors.green,
              ),
            ],
          ),
        ],
        //subtitle: Text("${article.commentsCount} comments"),
        // onTap: () async {
        //   final fakeUrl = "http://${article.domain}";
        //   if (await canLaunch(fakeUrl)) {
        //     launch(fakeUrl);
        //   }
        // }
        //Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SecondScreen())),
      ),
    );
  }
}
*/

//import 'dart:html';

//import 'dart:html';

//import 'dart
/*
////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


void main() => runApp(MaterialApp(
      title: " Flutter app",
      home: RandomWords(),
    ));

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
  //_RandomWordsState createState() => _RandomWordsState();
}



class _RandomWordsState extends State<RandomWords> {
  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        //backgroundColor: Colors.green[300],
        title: Text('Random word'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        // The itemBuilder callback is called once per suggested
        // word pairing, and places each suggestion into a ListTile
        // row. For even rows, the function adds a ListTile row for
        // the word pairing. For odd rows, the function adds a
        // Divider widget to visually separate the entries. Note that
        // the divider may be difficult to see on smaller devices.
        itemBuilder: (BuildContext _context, int i) {
          // Add a one-pixel-high divider widget before each row
          // in the ListView.
          if (i.isOdd) {
            return Divider();
          }

          // The syntax "i ~/ 2" divides i by 2 and returns an
          // integer result.
          // For example: 1, 2, 3, 4, 5 becomes 0, 1, 1, 2, 2.
          // This calculates the actual number of word pairings
          // in the ListView,minus the divider widgets.
          final int index = i ~/ 2;
          // If you've reached the end of the available word
          // pairings...
          if (index >= _suggestions.length) {
            // ...then generate 10 more and add them to the
            // suggestions list.
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      onTap: () => {
        //print('save word'),
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => SecondScreen(pair),
          ),
        ),
      },
      trailing: Icon(Icons.check_box),
      leading: CircleAvatar(
        backgroundColor: Colors.deepPurple[300],
        //foregroundColor: Colors.amber,

        child: FlutterLogo(),
        //child: Text(pair.toString().substring(0,1).toUpperCase()),
        //backgroundColor: Colors.green,
      ),
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}
//////////////////////////////////////////////////////////////
*/
