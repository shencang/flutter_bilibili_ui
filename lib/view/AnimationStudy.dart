import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(new AnimationStudy());

class AnimationStudy extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AnimationStudyState();
  }
}

class _AnimationStudyState extends State<AnimationStudy>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> tween;
  bool isVisible = false;
  var radius = 44.0;
  //50-255之间的数字，我们要变成-2.3到2.3之间的数字，abs=4.6
  //
   double xs=1;
   double ys=1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        new AnimationController(duration: Duration(seconds: 12), vsync: this);
    tween =
        new Tween<double>(begin: 0.0, end: 255).animate(animationController);
    tween.addListener(() {
      setState(() {
        print(tween.value);
        radius += 20;
        xs = 2.3-4.6/205*tween.value;
        ys = 2-4/205*tween.value;
      });
    });
    animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(0xff, 249, 102, 140)),
      home: Scaffold(
        appBar: AppBar(),
        body: new Stack(
          alignment: Alignment(xs,ys),
          children: <Widget>[
            Container(
              width:MediaQueryData.fromWindow(window).size.width,
              height: MediaQueryData.fromWindow(window).size.height*2/3,
            ),
            Container(
              alignment: Alignment(tween.value, tween.value),
              //  color: Colors.deepPurpleAccent,
              width: tween.value,
              height: tween.value,
              decoration: BoxDecoration(
                color: Color.fromARGB(
                    tween.value.toInt().abs(),
                    tween.value.toInt().abs(),
                    tween.value.toInt() - 30.abs(),
                    tween.value.toInt() - 40.abs()),
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
