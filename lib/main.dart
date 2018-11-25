import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:pool_results/ui/home/home_page.dart';

void main() {
  FlutterStatusbarcolor.setNavigationBarColor(Colors.transparent);
  FlutterStatusbarcolor.setNavigationBarWhiteForeground(false);

  FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
  FlutterStatusbarcolor.setStatusBarWhiteForeground(false);

  runApp(PoolApp());
}

class PoolApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pool',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(),
    );
  }
}
