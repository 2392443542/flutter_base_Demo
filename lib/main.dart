import 'package:flutter/material.dart';
import 'package:flutter_tabbar/pages/Form.dart';
import 'package:flutter_tabbar/pages/SearchPage.dart';
import 'pages/Tab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("导航"),
        ),
        body: Tabs(),
      ),
      routes: {
        '/form': (context) => FormPage(),
        '/search': (context) => SearchPage(),
      },
    );
  }
}
