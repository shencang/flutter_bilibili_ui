import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(new ListWidget());

class ListWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListWidgetState();
  }
}

class TestNotification extends Notification {
  TestNotification({
    @required this.count,
  });

  final int count;
}

class _ListWidgetState extends State<ListWidget> {
  bool isVisible = true;

  var _ScrollControllerNumber = ScrollController(initialScrollOffset: 100.0);

  double downOneY = 0.0;

  bool isAppbar = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(0xff, 249, 102, 140)),
      home: Scaffold(
          appBar: isAppbar
              ? AppBar(
                  elevation: 0.0,
                  title: Row(
                    children: <Widget>[
                      Stack(
                        alignment: Alignment(1.8, -1.7),
                        children: <Widget>[
                          ClipOval(
                              child: Image.asset(
                            "images/drawable-xxhdpi-v4/music_portrait_placeholder.png",
                            width:
                                MediaQueryData.fromWindow(window).padding.top,
                            height:
                                MediaQueryData.fromWindow(window).padding.top,
                          )),
                          Container(
//                    color: Colors.redAccent,
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.white, width: 0.5)),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15.0, right: 13.0),
                        padding: EdgeInsets.only(left: 4.0),
                        alignment: Alignment.centerLeft,
                        width: 180.0,
                        height: 30.0,
                        child: Icon(
                          Icons.search,
                          color: Colors.white30,
                          size: MediaQueryData.fromWindow(window).padding.top *
                              4 /
                              5,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
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
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Image.asset(
                          "images/drawable-xxhdpi-v4/ic_btn_player_danmaku_options_vertical_scroll_checked.png",
                          width: MediaQueryData.fromWindow(window).padding.top,
                          height: MediaQueryData.fromWindow(window).padding.top,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  centerTitle: false,
                )
              : null,
          //TODO 列表部件
          body: new NotificationListener(
              onNotification: (TestNotification n) {
                print("========>${n.toString()}");
                return true;
              },
              child: new Listener(
                onPointerUp: (downPointEvent) {
                  downOneY = downPointEvent.position.dy;
                  print("Downsize = ${downPointEvent.size}");
                  print("Downposition = ${downPointEvent.position.distance}");
                  print("Downposition x = ${downPointEvent.position.dx}");
                  print("Downposition y = ${downPointEvent.position.dy}");
//              print(
//                  "${sqrt(
//                      downPointEvent.position.dx * downPointEvent.position.dx
//                          +
//                          downPointEvent.position.dy * downPointEvent.position.dy)}");
                },
                onPointerMove: (movePointEvent) {
                  print("moveX =${movePointEvent.position.dx}");
                  print("moveY =${movePointEvent.position.dy}");

                  if (movePointEvent.position.dy - downOneY < 0) {
                    if (-(movePointEvent.position.dy - downOneY) > 40) {
                      setState(() {
                        isAppbar = false;
                      });
                    }
                    print("向上滑");
                  } else {
                    if ((movePointEvent.position.dy - downOneY) > 40) {
                      setState(() {
                        isAppbar = true;
                      });
                    }
                    print("向下滑");
                  }
                },
                child: ListView(
                  scrollDirection: Axis.vertical,
                  reverse: false,
                  controller: _ScrollControllerNumber,
                  children: <Widget>[
                    Container(
                      color: Colors.blue,
                      width: MediaQueryData.fromWindow(window).size.width,
                      height: 100.0,
                    ),
                    Container(
                      color: Colors.red,
                      width: MediaQueryData.fromWindow(window).size.width,
                      height: 100.0,
                    ),
                    Container(
                      color: Colors.yellow,
                      width: MediaQueryData.fromWindow(window).size.width,
                      height: 100.0,
                    ),
                    Container(
                      color: Colors.black,
                      width: MediaQueryData.fromWindow(window).size.width,
                      height: 100.0,
                    ),
                    Container(
                      color: Colors.white,
                      width: MediaQueryData.fromWindow(window).size.width,
                      height: 100.0,
                    ),
                    Container(
                      color: Colors.green,
                      width: MediaQueryData.fromWindow(window).size.width,
                      height: 100.0,
                    ),
                    Container(
                      color: Colors.blue,
                      width: MediaQueryData.fromWindow(window).size.width,
                      height: 100.0,
                    ),
                    Container(
                      color: Colors.purple,
                      width: MediaQueryData.fromWindow(window).size.width,
                      height: 100.0,
                    ),
                    Container(
                      color: Colors.blue,
                      width: MediaQueryData.fromWindow(window).size.width,
                      height: 100.0,
                    ),
                    Container(
                      color: Colors.red,
                      width: MediaQueryData.fromWindow(window).size.width,
                      height: 100.0,
                    ),
                    Container(
                      color: Colors.yellow,
                      width: MediaQueryData.fromWindow(window).size.width,
                      height: 100.0,
                    ),
                    Container(
                      color: Colors.black,
                      width: MediaQueryData.fromWindow(window).size.width,
                      height: 100.0,
                    ),
                    Container(
                      color: Colors.white,
                      width: MediaQueryData.fromWindow(window).size.width,
                      height: 100.0,
                    ),
                    Container(
                      color: Colors.green,
                      width: MediaQueryData.fromWindow(window).size.width,
                      height: 100.0,
                    ),
                    Container(
                      color: Colors.blue,
                      width: MediaQueryData.fromWindow(window).size.width,
                      height: 100.0,
                    ),
                    Container(
                      color: Colors.purple,
                      width: MediaQueryData.fromWindow(window).size.width,
                      height: 100.0,
                    ),
                    SizedBox(
                      height: 200.0,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: AlwaysScrollableScrollPhysics(),
                        itemCount: 12,
                          itemBuilder: (count, index) {
                        return Container(
                          width: 130.0,
                          height: 70.0,
                          color: Colors.yellow,
                          child: Icon(Icons.print),
                        );
                      }),
                    )

                  ],
                ),
              ))),
    );
  }
}
