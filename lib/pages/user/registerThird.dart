import 'package:flutter/material.dart';
import '../tabs.dart';
class RegisterThirdPage extends StatefulWidget {
  RegisterThirdPage({Key key}) : super(key: key);

  _RegisterThirdPageState createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('第三步完成注册'),),
      body: Column(children: <Widget>[
        SizedBox(height: 40.0,),
        Text('输入密码完成注册'),
        RaisedButton(
          child: Text('确定'),
          onPressed: (){
            //通过替换路由来实现
            // Navigator.of(context).pop();
            Navigator.of(context).pushAndRemoveUntil(
              new MaterialPageRoute(builder: (context)=>new Tabs(index:2)),
              (route)=>route==null,

            );
          },
        )
        
      ],),
    );
  }
}