import 'package:flutter/material.dart';
class GoodsPage extends StatefulWidget {
  GoodsPage({Key key}) : super(key: key);

  _GoodsPageState createState() => _GoodsPageState();
}

class _GoodsPageState extends State<GoodsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品页面'),),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('跳转到商品详情页面'),
            onPressed: (){
              Navigator.pushNamed(context, '/goodsinfo',arguments:{
                'pid':456
              });
            },
          )
        ],
      ),
    );
  }
}