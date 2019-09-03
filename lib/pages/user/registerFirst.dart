import 'package:flutter/material.dart';
class RegisterFirstPage extends StatefulWidget {
  RegisterFirstPage({Key key}) : super(key: key);

  _RegisterFirstPageState createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('第一步-输入手机号'),),
      body: Column(
        children: <Widget>[
          SizedBox(height: 40.0,),
          Text('这是注册的第一步,请输入手机号,然后点击下一步'),
          SizedBox(height: 40.0,),
          RaisedButton(
            child: Text('下一步'),
            onPressed: (){
              //通过普通路由来实现
              Navigator.pushNamed(context, '/registersecond');
              //通过替换路由来实现
              // Navigator.of(context).pushReplacementNamed('/registersecond');
            },
          )
        ],
      ),
    );
  }
}