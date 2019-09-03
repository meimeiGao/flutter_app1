import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title;
  FormPage({this.title='表单'});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('返加'),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(title: Text(this.title),),
      body: Text('我是form页面内容'),
    );
  }
}