import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex, //配置对应的索引值选中
        onTap: (int index) {
          setState(() {
            //改变状态
            this._currentIndex = index;
          });
        },
        iconSize: 36.0, //icon的大小
        fixedColor: Colors.red, //选中的颜色
        type: BottomNavigationBarType.fixed, //配置底部tabs可以有多个按钮
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: '分类'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 50,
              child: DrawerHeader(
                child: Text('侧边栏'),
                decoration: BoxDecoration(color: Colors.red),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.search),
              ),
              title: Text('1'),
            ),
            Divider(
              color: Colors.black12,
            ),
            ListTile(
              title: Text('1'),
            ),
            Divider(
              color: Colors.black12,
            ),
            ListTile(
              title: Text('1'),
            ),
            Divider(
              color: Colors.black12,
            ),
            ListTile(
              title: Text('1'),
            ),
            Divider(
              color: Colors.black12,
            ),
          ],
        ),
      ),
    );
  }
}
