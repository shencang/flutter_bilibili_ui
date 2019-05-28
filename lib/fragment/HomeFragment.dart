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
      theme: ThemeData(primaryColor: Colors.pinkAccent),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Row(
            children: <Widget>[
              ClipOval(
                  child: Image.asset(
                "images/drawable-xxhdpi-v4/music_portrait_placeholder.png",
                width: MediaQueryData.fromWindow(window).padding.top,
                height: MediaQueryData.fromWindow(window).padding.top,
              )),
              Container(
                margin: EdgeInsets.only(left: 15.0, right: 13.0),
                padding: EdgeInsets.only(left: 4.0),
                alignment: Alignment.centerLeft,
                width: 180.0,
                height: 30.0,
                child: Icon(
                  Icons.search,
                  color: Colors.white,
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
                child: Icon(
                  Icons.chat,
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
              child:GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,childAspectRatio: 1.3),
                itemBuilder: (context, index) {
                  return Padding(
                    padding:EdgeInsets.only(left: 15,right: 15),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child:  ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            child: Image.asset(
                              "images/drawable-xxhdpi-v4/img_column_no_data_space.png",
                              fit: BoxFit.cover,
                              height: 80.0,
                            ),
                          ),
                        ),
                        Text("没有网络连接",
                            textScaleFactor: 0.70,),
                        Text("其他游戏",style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                            textScaleFactor: 0.7),
                      ],),);

                },itemCount: 12,) ,
            )

          ],
        ),
      ),
    );
  }
}
