import 'package:flutter/material.dart';
import './pages/splash.dart';
import './pages/login.dart';
import './pages/sign_up.dart';
import './pages/list_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: ListItemPage()
    );
  }
}