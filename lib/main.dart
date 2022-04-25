import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_flutter/view/screens/home_screen.dart';

void main() => runApp(MyNewsApp());

class MyNewsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeScreen(),
    );
  }
}
