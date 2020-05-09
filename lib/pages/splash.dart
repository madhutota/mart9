import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

import './login.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SplashPage();
  }
}

class _SplashPage extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 20),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginHomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).padding.top,
                      left: 16,
                      right: 16),

                  ///Users/madhutota/Downloads/Flutter Projects/mart9/mart9/assets/images/logo_mart9_bag.png
                  child: Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('assets/images/logo_mart9_bag.png')),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 30,
                    child: Image.asset('assets/images/logo_mart9.png')),
                SizedBox(
                  height: 50,
                ),
                CollectionScaleTransition(
                  children: <Widget>[
                    Icon(Icons.brightness_1),
                    Icon(Icons.brightness_1),
                    Icon(Icons.brightness_1),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
