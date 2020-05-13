import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:space/homepage.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 2;
  final List<Widget> _children = [ Text('page1',),Text('page2'),Homepage(),Text('page4'),Text('page5')];
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void changeindex(int index) {
   setState(() {
    _currentIndex = index;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple,
        buttonBackgroundColor: Colors.grey.shade100,

        items: <Widget>[
          Icon(Icons.list, size: 30,color: Colors.deepPurple,),
          Icon(Icons.notifications, size: 30,color: Colors.deepPurple),
          Icon(Icons.add, size: 30,color: Colors.deepPurple),
          Icon(Icons.star, size: 30,color: Colors.deepPurple),
          Icon(Icons.person, size: 30,color: Colors.deepPurple),
        ],
        onTap:changeindex,
        index: _currentIndex,
        height: 50,
        animationDuration: Duration(
          milliseconds: 200,
        ),
      ),
      body: _children[_currentIndex],
    );
  }
}


