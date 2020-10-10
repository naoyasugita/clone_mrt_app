import 'package:clone_mrt_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DEMO APP',
      // theme: ThemeData(primarySwatch: ),
      home: MyAppHome(),
    );
  }
}
