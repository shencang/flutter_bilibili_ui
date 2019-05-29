import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(new EditTextWidget());

class EditTextWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EditTextWidgetState();
  }
}

class _EditTextWidgetState extends State<EditTextWidget> {
  bool isVisible = false;

  var editerTextCont = TextEditingController();

  var myTextFieldController = TextEditingController();

  var myTextFormFieldController = TextEditingController();

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
//         TODO：   基本输入框
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(left: 10.0),
              alignment: Alignment.center,
              height: 40.0,
              width: MediaQueryData.fromWindow(window).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.access_alarm),
                      Container(
                        padding: EdgeInsets.only(
                          left: 5,
                        ),
                        alignment: Alignment.center,
                        width: 200,
                        height: 36,
                        child: EditableText(
                          controller: editerTextCont,
                          focusNode: FocusNode(),
                          style: TextStyle(color: Colors.red),
                          cursorColor: Colors.blue,
                          backgroundCursorColor: Colors.white,
                          textDirection: TextDirection.ltr,
                          cursorWidth: 10,
                          //obscureText: true ,
                          cursorRadius: Radius.circular(10.0),
                          onChanged: (result) {
                            print(result);
                            print(editerTextCont.text + "mmp");
                          },
                          textInputAction: TextInputAction.go,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Icon(Icons.phone_android),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                border: Border.all(color: Colors.blue, width: 2.0),
              ),
            ),
            //ToDO TextFiled
            Container(
              margin: EdgeInsets.all(22.0),
              width: 200.0,
              height: 200.0,
              child: TextField(
                controller: myTextFieldController,
                focusNode: FocusNode(),
                decoration: InputDecoration(
                    labelText: "请输入你的密码：",
                    labelStyle: TextStyle(color: Colors.blue),
                    helperText: "不行你太可爱了",
                    suffixIcon: Icon(Icons.help),
                    prefixIcon: Icon(Icons.arrow_drop_down_circle),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
                enabled: true,
              ),
            ),
            TextFormField(
              controller: myTextFormFieldController,
              focusNode: FocusNode(),
              decoration: InputDecoration(
                labelText: "请输入你的密码：",
                labelStyle: TextStyle(color: Colors.blue),
                helperText: "不行你太可爱了",
                suffixIcon: Icon(Icons.help),
                prefixIcon: Icon(Icons.arrow_drop_down_circle),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40)
                )
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
