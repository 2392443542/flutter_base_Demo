import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class FormPage extends StatelessWidget {
  final String title;
  FormPage({this.title = '表单'});
  @override
  List<Widget> _getData() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      WordPair wordPair = WordPair.random();
      String worStr = wordPair.toString();
      Widget listTitle = ListTile(
        title: Text("我是表单页面 $worStr "),
      );
      list.add(listTitle);
    }
    print(list);
    return list;
  }

  List<Widget> _getData1() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      list.add(ListTile(
        title: Text("我是$i列表"),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: ListView(
        children: this._getData(),
      ),
    );
  }
}

/*
class FormPage extends StatefulWidget {
// FormPage({Key: key}) : super(key: key);

  // String title = '表单';
  // _FormPageState(this.title)
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  String title = '表单';

  // FormPage({this.title});
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  List<Widget> _getData() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      WordPair wordPair = WordPair.random();
      String worStr = wordPair.toString();
      Widget listTitle = ListTile(
        title: Text("我是表单页面 $worStr "),
      );
      list.add(listTitle);
    }
    print(list);
    return list;
  }

  List<Widget> _getData1() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      list.add(ListTile(
        title: Text("我是$i列表"),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        children: this._getData(),
      ),
    );
  }
}

*/
