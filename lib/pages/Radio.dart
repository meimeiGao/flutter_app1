import 'package:flutter/material.dart';
class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  var _sex = 1 ;
  bool _flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("radio"),),
      body: Column(
        children: <Widget>[
          // Row(
          //   children: <Widget>[
          //     Text("男"),
          //     Radio(
          //       value: 1,
          //       onChanged: (value){
          //         setState(() {
          //          this._sex = value; 
          //         });
          //       },
          //       groupValue: this._sex,
          //     ),
          //     SizedBox(width: 10.0,),
          //     Text("女"),
          //     Radio(
          //       value: 2,
          //       onChanged: (value){
          //         setState(() {
          //          this._sex = value; 
          //         });
          //       },
          //       groupValue: this._sex,
          //     )
          //   ],
          // ),
          // Row(
          //   children: <Widget>[
          //     Text("${this._sex}"),
          //     Text(this._sex==1?'男':'女')
          //   ],
          // )

          RadioListTile(
                value: 1,
                onChanged: (value){
                  setState(() {
                   this._sex = value; 
                  });
                },
                groupValue: this._sex,
                title: Text('标题'),
                subtitle: Text('副标题'),
                secondary: Image.network('https://www.itying.com/images/201803/thumb_img/800_thumb_G_1521373741887.jpg'),
                selected: this._sex==1,
              ),
              RadioListTile(
                value: 2,
                onChanged: (value){
                  setState(() {
                   this._sex = value; 
                  });
                },
                groupValue: this._sex,
                title: Text('标题'),
                subtitle: Text('副标题'),
                secondary: Image.network('https://www.itying.com/images/201903/thumb_img/1072_thumb_G_1553400369809.jpg'),
                selected: this._sex==2,
              ),
              SizedBox(height: 10.0,),
              Switch(
                value: this._flag,
                onChanged: (value){
                  setState(() {
                   this._flag = value; 
                  });
                  print(value);
                },
              )

            ],
   
      ),
    );
  }
}