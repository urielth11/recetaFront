//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;

  final screens = [
    Menu(),
    Menu(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.search, size: 30),
      Icon(Icons.book_outlined, size: 30),
      Icon(Icons.favorite, size: 30),
      Icon(Icons.auto_awesome_rounded, size: 30),
      Icon(Icons.account_circle, size: 30),
    ];

    return Scaffold(
      body: screens[index],
      /*bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.white),
        ),
        child: background,
        /*child: CurvedNavigationBar(
          key: navigationKey,
          color: Colors.blueAccent,
          backgroundColor: Colors.transparent,
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          index: index,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ),*/
      ),*/
    );
  }
}
