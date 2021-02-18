import 'package:flutter/material.dart';


class BottomNavigator extends StatefulWidget {
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(icon: Icon(Icons.card_travel)),
    Tab(icon: Icon(Icons.add_shopping_cart)),
  ];

  @override
  void initState() {

    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(color: Colors.green),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(25, 0, 40, 0),
                child: RaisedButton(
                  color: Colors.green[300],
                  child: Container(
                    child: Icon(
                      Icons.camera,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'home_bottom');
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: RaisedButton(
                  color: Colors.green[300],
                  child: Container(
                    child: Icon(
                      Icons.home,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'Messages');
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(280, 0, 10, 0),
          child: RaisedButton(
            color: Colors.green[300],
            child: Container(
              child: Icon(
                Icons.person,
                size: 40,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'Profile');
            },
          ),
        ),
      ],
    );
  }
}
