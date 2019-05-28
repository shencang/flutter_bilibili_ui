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
  bool isVisible = false;

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
        appBar: AppBar(
          elevation: 0.0,
          title: Row(
            children: <Widget>[
              Stack(
                alignment: Alignment(1.8, -1.7),
                children: <Widget>[
                  ClipOval(
                      child: Image.asset(
                    "images/drawable-xxhdpi-v4/music_portrait_placeholder.png",
                    width: MediaQueryData.fromWindow(window).padding.top,
                    height: MediaQueryData.fromWindow(window).padding.top,
                  )),
                  Container(
//                    color: Colors.redAccent,
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 0.5)),
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
                  size: MediaQueryData.fromWindow(window).padding.top * 4 / 5,
                ),
                decoration: BoxDecoration(
                    color: Colors.black12,
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
          centerTitle: true,
        ),
        body: new ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              padding: new EdgeInsets.only(top: 13.0),
              alignment: Alignment.center,
              height: 40.0,
              width: MediaQueryData.fromWindow(window).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("直播"),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        height: 1,
                        width: 30.0,
                        color: Colors.pinkAccent,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("推荐"),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        height: 1,
                        width: 30.0,
                        color: isVisible ? Colors.pinkAccent : Colors.white,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("追番"),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        height: 1,
                        width: 30.0,
                        color: isVisible ? Colors.pinkAccent : Colors.white,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("国家宝藏"),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        height: 1,
                        width: 30.0,
                        color: isVisible ? Colors.pinkAccent : Colors.white,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("故事王2"),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        height: 1,
                        width: 30.0,
                        color: isVisible ? Colors.pinkAccent : Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
                child: Image.asset(
                  "images/drawable-xxhdpi-v4/lbs_position_detail_bg.webp",
                  fit: BoxFit.cover,
                  height: 120.0,
                ),
              ),
            ),
            SizedBox(
              height: 150.0,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                "images/drawable-xxhdpi-v4/mall_ic_common_loading02.png",
                                width: 65,
                                height: 30,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text(
                                "英雄联盟",
                                textScaleFactor: 0.75,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                "images/drawable-xxhdpi-v4/mall_ic_common_loading02.png",
                                width: 65,
                                height: 30,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text(
                                "英雄联盟",
                                textScaleFactor: 0.75,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                "images/drawable-xxhdpi-v4/mall_ic_common_loading02.png",
                                width: 65,
                                height: 30,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text(
                                "英雄联盟",
                                textScaleFactor: 0.75,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                "images/drawable-xxhdpi-v4/mall_ic_common_loading02.png",
                                width: 65,
                                height: 30,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text(
                                "英雄联盟",
                                textScaleFactor: 0.75,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                "images/drawable-xxhdpi-v4/mall_ic_common_loading02.png",
                                width: 65,
                                height: 30,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text(
                                "英雄联盟",
                                textScaleFactor: 0.75,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 2,
              ),
            ),
            Container(height: 1.0, color: Colors.black12),
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "我的关注",
                      textScaleFactor: 0.9,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text(
                      "16小时之前",
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                      textScaleFactor: 0.70,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Text("姬月",
                        textScaleFactor: 0.70,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Text(
                      "直播了唱见电台",
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                      textScaleFactor: 0.70,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 120),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 10,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 1.0, color: Colors.black12),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              height: 30.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "推荐直播",
                    textScaleFactor: 0.9,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "换一换",
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                        textScaleFactor: 0.7,
                      ),
                      Icon(
                        Icons.rotate_left,
                        size: 10,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQueryData.fromWindow(window).size.height,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1.3),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6.0)),
                                  child: Image.asset(
                                    "images/drawable-nodpi-v4/banner_default_topic.webp",
                                    fit: BoxFit.cover,
                                    height: 90.0,
                                  ),
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "村里可能刚通网",
                                        textScaleFactor: 0.7,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.perm_identity,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                          Text("10万人",
                                              textScaleFactor: 0.7,
                                              style: TextStyle(
                                                  color: Colors.white))
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                        Text(
                          "没有网络连接",
                          textScaleFactor: 0.75,
                        ),
                        Text("其他游戏",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                            textScaleFactor: 0.7),
                      ],
                    ),
                  );
                },
                itemCount: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
