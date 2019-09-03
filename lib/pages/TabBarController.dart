import 'package:flutter/material.dart';
class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void dispose(){//组件生命周期函数  组件销毁
    super.dispose();
    _tabController.dispose();//把自身组件销毁
  }


  void initState(){//组件生命周期函数  组件初始化
    super.initState();
    //自定义方法
    _tabController = new TabController(
      vsync: this,//固定写法
      length: 2
    );
    _tabController.addListener((){
      print(_tabController.index);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tarbarcontroller页面'),
        bottom: TabBar(
          controller: this._tabController,
          tabs: <Widget>[
            Tab(text:'热销'),
            Tab(text:'推荐'),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(child: Text('热销'),),
          Center(child: Text('推荐'),)
        ],
      ),
      
    );
  }
}