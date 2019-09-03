import 'package:flutter/material.dart';
// import '../search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20.0,),
        RaisedButton(
          child: Text('跳转到搜索页面'),
          onPressed: (){
            //路由跳转
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context)=>SearchPage(),
            //   )
            // );
            Navigator.pushNamed(context, '/search',arguments: {'id':123});
          },
        ),
        RaisedButton(
          child: Text('跳转到商品页面'),
          onPressed: (){
            //路由跳转
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context)=>SearchPage(),
            //   )
            // );
            Navigator.pushNamed(context, '/goods');
          },
        ),
        RaisedButton(
          child: Text('跳转到appbar页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/appBarDemo');
          },
        ),
        RaisedButton(
          child: Text('跳转到TarBarController页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/tabbarcontroller');
          },
        ),
        RaisedButton(
          child: Text('跳转按钮演示中心页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/button');
          },
        ),
        RaisedButton(
          child: Text('跳到表单演示页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/textfild');
          },
        ),
        RaisedButton(
          child: Text('跳转到复选框页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/checkbox');
          },
        ),
        RaisedButton(
          child: Text('跳转到单选页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/raido');
          },
        ),
        RaisedButton(
          child: Text('学员登记系统'),
          onPressed: (){
            Navigator.pushNamed(context, '/formDemo');
          },
        ),
        RaisedButton(
          child: Text('跳转到日期页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/MyDate');
          },
        ),
       
        
      ],
    );
  }
}