import 'package:flutter/material.dart';
// import '../form.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: TabBar(
             
                  tabs: <Widget>[
                    Tab(text:'热销'),
                    Tab(text:'推荐'),
                    Tab(text:'热销'),
                    Tab(text:'推荐'),
                    Tab(text:'推荐'),
                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          ListView(
            children: <Widget>[
              Text('我是分类页面'),
              SizedBox(height: 20.0,),
              RaisedButton(
                child: Text('跳转到表单页面,并传值'),
                onPressed: (){
                  //普通路由跳转
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context)=>FormPage(title: '我是form表单传值',)
                  //   )
                  // );
                  Navigator.pushNamed(context, '/form');
                },
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第二个bar'),
              ),
              ListTile(
                title: Text('第二个bar'),
              ),
              ListTile(
                title: Text('第二个bar'),
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第三个bar'),
              ),
              ListTile(
                title: Text('第三个bar'),
              ),
              ListTile(
                title: Text('第三个bar'),
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第四个bar'),
              ),
              ListTile(
                title: Text('第四个bar'),
              ),
              ListTile(
                title: Text('第四个bar'),
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第五个bar'),
              ),
              ListTile(
                title: Text('第五个bar'),
              ),
              ListTile(
                title: Text('第五个bar'),
              ),
            ],
          ),
        ],),
      ),
    );
  }
}
