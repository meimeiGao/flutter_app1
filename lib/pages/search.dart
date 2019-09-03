import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final arguments;
  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我是search bar'),),
      body: Text('我是search页面内容${arguments!=null?arguments["id"]:"0"}'),
    );
  }
}