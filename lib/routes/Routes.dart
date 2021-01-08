import 'package:flutter_tabbar/pages/User/RegisterSecond.dart';
import 'package:flutter_tabbar/pages/User/RegisterThird.dart';

import '../pages/SearchPage.dart';
import '../pages/Form.dart';
import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/User/Login.dart';
import '../pages/User/RegisterFirst.dart';
import '../pages/User/RegisterSecond.dart';
import '../pages/User/RegisterThird.dart';
import '../pages/tabbs/Setting.dart';

//固定写法
var onGenerateRoute = (RouteSettings settings) {
  final routes = {
    '/': (context) => Tabs(),
    '/form': (context) => FormPage(),
    '/search': (context) => SearchPage(),
    '/login': (context) => LoginPage(),
    '/setting': (context) => SettingPage(),
    '/registerFirst': (context) => RegisterFirstPage(),
    '/registerSecond': (context) => RegisterSecondPage(),
    '/registerThird': (context) => RegisterThirdPage(),
  };
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
