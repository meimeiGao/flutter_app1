import 'package:flutter/material.dart';
class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('我是appbardemo'),
          // backgroundColor: Colors.pink,
          bottom: TabBar(//顶部的tab切换
            tabs: <Widget>[
              Tab(text: '热门',),
              Tab(text: '推荐',),
            ],
          ),
          // leading: IconButton(//设置导航条前面的图标
          //   icon: Icon(Icons.search),
          //   onPressed: (){
          //     print("search");
          //   },
          // ),
          // actions: <Widget>[
          //   IconButton(//设置导航条后同的图标
          //     icon: Icon(Icons.search),
          //     onPressed: (){
          //       print("search");
          //     },
          //   )
          // ],
        ),
    
      body: TabBarView(
        children: <Widget>[
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第一个tab'),
              ),
              ListTile(
                title: Text('第一个tab'),
              ),
              ListTile(
                title: Text('第一个tab'),
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第二个tab'),
              ),
              ListTile(
                title: Text('第二个tab'),
              ),
              ListTile(
                title: Text('第二个tab'),
              ),
            ],
          ),
        ],
      )
    ),

    );
  }
}