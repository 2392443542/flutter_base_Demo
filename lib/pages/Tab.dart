import 'package:flutter/material.dart';
import 'package:flutter_tabbar/pages/tabbs/Categrory.dart';
import 'tabbs/Home.dart';
import 'tabbs/Setting.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  List _pageList = [
    HomePage(),
    CategorytPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        currentIndex: this._currentIndex,
        onTap: (int i) {
          // print(i);
          setState(() {
            this._currentIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: '分类'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '请课'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "我的"),
        ],
      ),
    );
  }
}
