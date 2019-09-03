import 'package:flutter/material.dart';
class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("我是setting组件"),
        RaisedButton(
          child: Text('跳转到登录页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/login');
          },
        ),
        SizedBox(height: 50.0,),
        RaisedButton(
          child: Text('跳转到注册页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/registerfirst'); 
   
          },
        )

      ],
    );
  }
}