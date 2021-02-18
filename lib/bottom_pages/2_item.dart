import 'package:flutter/material.dart';

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return Container(
      child: new Image.asset(
        'assets/images/tree2.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}