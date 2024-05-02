import 'package:flutter/material.dart';
import 'left_page_view.dart';
import 'right_page_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Example',
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Offstage(
              offstage: _index != 0,
              child: TickerMode(
                enabled: _index == 0,
                child: MaterialApp(home: YourLeftPage()),
              ),
            ),
            Offstage(
              offstage: _index != 1,
              child: TickerMode(
                enabled: _index == 1,
                child: MaterialApp(home: YourRightPage()),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (int index) {
            setState(() {
              _index = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Left",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Right",
            ),
          ],
        ),
      ),
    );
  }
}

