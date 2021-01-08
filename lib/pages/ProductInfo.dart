import 'package:flutter/material.dart';

class ProductsInfoPage extends StatefulWidget {
  Map arguments;
  ProductsInfoPage({Key key}) : super(key: key);

  @override
  _ProductsInfoPageState createState() =>
      _ProductsInfoPageState(arguments: this.arguments);
}

class _ProductsInfoPageState extends State<ProductsInfoPage> {
  Map arguments;
  _ProductsInfoPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Text('pid=${arguments["pid"]}'),
      ),
    );
  }
}
