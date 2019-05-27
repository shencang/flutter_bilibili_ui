import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(new HomeFragment());

class HomeFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeFragmentState();
  }
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(255, 250, 150, 150)),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              ClipOval(
                  child: Image.asset(
                "images/longnv5.jpeg",
                width: MediaQueryData.fromWindow(window).padding.top,
                height: MediaQueryData.fromWindow(window).padding.top,
              )),
              Container(
                margin: EdgeInsets.only(left: 13.0, right: 13.0),
                padding: EdgeInsets.only(left: 4.0),
                alignment: Alignment.centerLeft,
                width: 180.0,
                height: 30.0,
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
              ),
              Image.asset(
                "images/music_icon_subject.png",
                width: MediaQueryData.fromWindow(window).padding.top,
                height: MediaQueryData.fromWindow(window).padding.top,
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Icon(
                  Icons.cloud_download,
                  color: Colors.white,
                ),
              ),Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Icon(
                  Icons.chat,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}