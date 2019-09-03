import 'package:flutter/material.dart';
class RegisterSecondPage extends StatefulWidget {
  RegisterSecondPage({Key key}) : super(key: key);

  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('第二步完成注册'),),
      body: Column(children: <Widget>[
        SizedBox(height: 40.0,),
        Text('输入验证码完成注册'),
        SizedBox(height: 40.0,),
        RaisedButton(
          child: Text('下一步'),
          onPressed: (){
             //通过普通路由来实现
            Navigator.pushNamed(context, '/registerthird');
            //通过替换路由来实现
            // Navigator.of(context).pushReplacementNamed('/registerthird');
          },
        )
        
      ],),
    );
  }
}