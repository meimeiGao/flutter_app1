import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我是登录页面'),),
      body:Column(
        children: <Widget>[
          Text('这是登录信息'),
          RaisedButton(
            child: Text('立即登录'),
            onPressed: (){
              Navigator.of(context).pop();
            },
          )
        ],
      )
    );
  }
}