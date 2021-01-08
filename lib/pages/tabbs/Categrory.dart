import 'package:flutter/material.dart';
import '../Form.dart';

class CategorytPage extends StatefulWidget {
  @override
  _CategorytPageState createState() => _CategorytPageState();
}

class _CategorytPageState extends State<CategorytPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Text('分类1'),
              color: Colors.red,
            ),
            Container(
              child: Text('分类2'),
              color: Colors.red,
            ),
            Container(
              child: Text('分类3'),
              color: Colors.red,
            ),
          ],
        ),
        ButtonBar(
          children: [
            Text("家具"),
            Text('出具'),
            Text('玻璃器皿'),
          ],
        ),
        Container(
          alignment: Alignment.center,
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => FormPage()));
            },
            child: Text('跳转到表单页面'),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        )
      ],
    );
  }
}
