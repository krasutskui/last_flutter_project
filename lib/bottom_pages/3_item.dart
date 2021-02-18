import 'package:flutter/material.dart';

class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return Container(
      child: new Image.asset(
        'assets/images/tree3.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}