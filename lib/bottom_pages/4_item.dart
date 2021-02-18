import 'package:flutter/material.dart';

class Item4 extends StatelessWidget {
  const Item4({Key key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return Container(
      child: new Image.asset(
        'assets/images/tree4.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}