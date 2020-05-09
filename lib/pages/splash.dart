import 'dart:ui';

import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                    child: Image.asset('assets/images/logo_mart9.png'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
