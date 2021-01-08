import 'package:flutter/material.dart';
import '../SearchPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.black12,
        // width: 300,
        // height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/search");
              },
              child: Text('跳转到搜索页面'),
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary,
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/form");
              },
              child: Text('跳转到表单页面'),
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary,
            )
          ],
        ),
      ),
    );
  }
}
