import 'package:flutter/material.dart';
import 'package:pool_results/ui/home/HomePage.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

void main() {
  FlutterStatusbarcolor.setNavigationBarColor(Colors.red);
  FlutterStatusbarcolor.setStatusBarColor(Colors.red);

  runApp(PoolApp());
}

class PoolApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}
