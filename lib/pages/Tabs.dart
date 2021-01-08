import 'package:flutter/material.dart';
// import 'package:flutter_tabbar/pages/tabbs/Categrory.dart';
import 'tabbs/Categrory.dart';
import 'tabbs/Home.dart';
import 'tabbs/Setting.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0}) : super(key: key);
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int index;
  List _pageList = [
    HomePage(),
    CategorytPage(),
    SettingPage(),
  ];

  // _TabsState({this.index});
  // _TabsState(index) {
  //   this.index = index;
  //   print(index);
  // }
  void initState() {
    // TODO: implement initState
    super.initState();
    this.index = widget.index;
    print(widget.index);
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: this._pageList[this.index],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        currentIndex: this.index,
        onTap: (int i) {
          // print(i);
          setState(() {
            this.index = i;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: '分类'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "我的"),
        ],
      ),
    );
  }
}
