import 'package:flutter/material.dart';
class FormDemoPage extends StatefulWidget {
  FormDemoPage({Key key}) : super(key: key);

  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {
  var _userName = new TextEditingController();
  int _sex = 1;
  String info = '';
  void _setChanged(value){
    setState(() {
     this._sex = value; 
    });
  }
  List _hobby = [
    {
      "checked":true,
      "title":"吃饭"
    },
    {
      "checked":false,
      "title":'睡觉'
    },
    {
      "checked":true,
      "title":'打豆豆'
    }
  ];

  List<Widget> _getHobby(){
    List<Widget> tempList = [];
    for(var i = 0 ; i < this._hobby.length;i++){
      tempList.add(
        Row(
          children: <Widget>[
            Text(this._hobby[i]['title']+':'),
            Checkbox(
              value: this._hobby[i]['checked'],
              onChanged: (value){
                setState(() {
                  this._hobby[i]['checked'] = value;
                });
              },
            )
          ],
        )
      );

    }
    return tempList;
  }
  @override
  void initState(){
    super.initState();
    this._userName.text = '张三';
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('学员登记系统'),),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "请输入用户信息",
            ),
            onChanged: (value){
              setState(() {
               this._userName.text = value;
              });
            },
            controller: this._userName,
          ),
         
          Row(
            children: <Widget>[
              Text('男'),
              Radio(
                value: 1,
                onChanged: this._setChanged,
                groupValue: this._sex,
              ),
              SizedBox(width: 10.0),
              Text('女'),
              Radio(
                value: 2,
                onChanged: this._setChanged,
                groupValue: this._sex,
              )
            ],
          ),
          
          Column(
            children:_getHobby(),
          ),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText: '请输入用户信息',
              border: OutlineInputBorder(),
            ),
            onChanged: (value){
              setState(() {
               this.info = value ;
              });
            },
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: RaisedButton(
                    child: Text('登录'),
                    onPressed: (){
                      print(this._sex);
                      print(this._userName.text);
                      print(this._hobby);
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ),
            ],
          ),
        ],
      ),
      ),
    );
  }
}