import 'package:flutter/material.dart';
class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool _flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('复选框页面'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                 value: this._flag, 
                 onChanged: (value){
                   setState(() {
                    this._flag = value; 
                   });
                 },
                ),
                Text(this._flag?"选中":"未远中"),
              ],
          ),
           CheckboxListTile(
              value: this._flag,
              onChanged: (value){
                setState(() {
                  this._flag = value; 
                });
              },
              title: Text("标题"),
              subtitle: Text("这是二级标题"),
              secondary: Icon(Icons.help),
            )
        ],
      )
    );
  }
}