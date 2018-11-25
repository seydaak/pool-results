import 'package:flutter/material.dart';

class PoolButton extends StatelessWidget {
  const PoolButton({
    Key key,
    @required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: Text("Create a new pool"),
      icon: Icon(Icons.add),
      elevation: 4.0,
      onPressed: onPressed,
    );
  }
}
