import 'package:flutter/material.dart';

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Image.asset(
        'assets/images/tree1.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
