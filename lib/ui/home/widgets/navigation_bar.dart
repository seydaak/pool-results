import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar(
      {Key key, @required this.onQRScanPressed, @required this.onPoolsPressed})
      : super(key: key);

  final VoidCallback onQRScanPressed;
  final VoidCallback onPoolsPressed;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.center_focus_weak),
            onPressed: onQRScanPressed,
          ),
          IconButton(
            icon: Icon(Icons.list),
            onPressed: onPoolsPressed,
          ),
        ],
      ),
    );
  }
}
