import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.https),
        title: Text("hello wrod"),
      ),
      body: new ListView(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  //Image.asset(""),
                  Icon(
                    Icons.library_music,
                    color: Colors.blue,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Colors.amberAccent,
                  ),
                  Text("hello world"),
                ],
              ),
              Column(
                children: <Widget>[
                  Text("hello world"),
                  Text("hello world"),
                ],
              ),
              Column(
                children: <Widget>[
                  Text("hello world"),
                  Text("hello world"),
                ],
              ),
              Column(
                children: <Widget>[
                  Text("hello world"),
                  Text("hello world"),
                ],
              ),
            ], //weight
          ), //row

          Column(
            children: <Widget>[
              Text("hello world"),
              Text("hello world"),
            ], //weight
          ),

          new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 80.0,
                height: 80.0,
                color: Colors.blue,
                margin: EdgeInsets.only(left: 10.0),
                child: Icon(
                  Icons.settings_overscan,
                  size: 80.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("设备名称"),
                    Text("此处我为消息内容部分"),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30.0),
                child: Text("2019-12-11"),
              )
            ],
          ),
          new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Flexible(
                child: Icon(
                  Icons.settings_overscan,
                  size: 80.0,
                ),
                flex: 1,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("设备名称"),
                    Text("此处我为消息内容部分"),
                  ],
                ),
                flex: 2,
              ),
              Flexible(
              child:Container(
                padding: EdgeInsets.only(left: 50.0),
                child:Text("2019-12-11") ,
              ),
                flex: 1
              )
            ],
          )
        ],
      ),
    );
  }
}
