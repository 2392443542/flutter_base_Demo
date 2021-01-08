import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  var arguments;
  SearchPage({this.arguments});
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var arguments;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    arguments = widget.arguments;
    // print(this.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索'),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 300,
          height: 300,
          color: Colors.blue,
          child: Text(
            '$arguments',
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
        ),
      ),
    );
  }
}
