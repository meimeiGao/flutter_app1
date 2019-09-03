import 'package:flutter/material.dart';
class GoodsInfoPage extends StatefulWidget {
  Map arguments;
  GoodsInfoPage({Key key,this.arguments}) : super(key: key);

  _GoodsInfoPageState createState() => _GoodsInfoPageState(arguments:this.arguments);
}

class _GoodsInfoPageState extends State<GoodsInfoPage> {
  Map arguments;
  _GoodsInfoPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品详情页面'),),
      body: Container(
       child: Text("pid=${arguments['pid']}"),
    ),
    );
  }
}