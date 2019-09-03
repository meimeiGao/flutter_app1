import 'package:flutter/material.dart';
class TextFildPage extends StatefulWidget {
  TextFildPage({Key key}) : super(key: key);

  _TextFildPageState createState() => _TextFildPageState();
}

class _TextFildPageState extends State<TextFildPage> {
  var _userName = new TextEditingController();//初始化给表单赋值
  var _password;

  @override
  void initState(){
    super.initState();
    this._userName.text= '初始值';
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('表单演示页面'),),
      body:Padding(
        padding: EdgeInsets.all(20),
        // child: TextFildDemo()
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: '请输入用户名'
              ),
              controller: this._userName,
              onChanged: (value){
                setState(() {
                  this._userName.text = value; 
                });
              },
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                hintText: "请输入密码",
                border: OutlineInputBorder(),
              ),
              onChanged: (value){
                setState(() {
                  this._password = value ;
                });
              },
            ),
            Container(
              child: RaisedButton(
                child: Text('登录'),
                onPressed: (){
                  print(this._userName.text);
                  print(this._password);
                },
              ),
            )
          ],
        ),
      )
    );
  }
}



class TextFildDemo extends StatelessWidget {
  const TextFildDemo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            TextField(
              
            ),
            SizedBox(height: 20.0,),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.account_box),
                hintText: "请输入课程内容",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0,),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: "请输入内容",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '请输入密码',
                border:OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0,),
            TextField(
              maxLength: 6,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '密码',
                labelStyle: TextStyle(
                  fontSize: 20.0,
                  color: Colors.pink
                )
              ),
            )
          ],
        );
  }
}