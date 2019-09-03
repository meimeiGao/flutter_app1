
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import './tabs/category.dart';
import './tabs/Home.dart';
import './tabs/Setting.dart';



class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key,this.index=0}) : super(key: key);

  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
   
  ];  
  _TabsState(index){
    this._currentIndex = index;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
        // appBar: AppBar(title: Text('flutter femo'),),
        body:this._pageList[this._currentIndex],
        floatingActionButton: Container(
          height: 60.0,
          width: 60.0,
          padding: EdgeInsets.all(8.0),
          margin: EdgeInsets.only(top: 20.0),
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(60.0),
            color: Colors.white
          ),
          child: FloatingActionButton(
            backgroundColor: this._currentIndex==1?Colors.red:Colors.yellow,
            child: Icon(Icons.add,size: 40.0,),
            onPressed: (){
                setState(() {//改变状态
             this._currentIndex = 1;
            });
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex:this._currentIndex,
          onTap: (int index){
            setState(() {//改变状态
             this._currentIndex = index;
            });
          },
          fixedColor:Colors.pink,//选中的颜色
          iconSize:36.0,//图标的大小
          type: BottomNavigationBarType.fixed,//设置可以配置bar可以有多个
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.satellite),
              title: Text('分类')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("设置")
            ),
            
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
            //  Row(
            //    children: <Widget>[
            //      Expanded(
            //        child:  DrawerHeader(//抽屉的格式比较灵活
            //         child: Text('你好 flutter'),
            //         decoration: BoxDecoration(
            //           image: DecorationImage(
            //             image: NetworkImage('https://www.itying.com/images/201902/thumb_img/1068_thumb_G_1550821351576.jpg'),
            //             fit:BoxFit.cover
            //           )
            //     ),
            //   ),
            //      )
            //    ],
            //  ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: UserAccountsDrawerHeader(
                      accountName:Text('一点点奶茶店'),
                      accountEmail:Text('allit_tea@163.com'),
                      currentAccountPicture:CircleAvatar(
                        backgroundImage:NetworkImage('https://www.itying.com/images/201902/thumb_img/1068_thumb_G_1550821351576.jpg')
                      ),
                      otherAccountsPictures: <Widget>[
                        Image.network('https://www.itying.com/images/201804/thumb_img/859_thumb_G_1524561186461.jpg'),
                        Image.network('https://www.itying.com/images/201807/thumb_img/915_thumb_G_1530420382534.jpg')
                      ],

                    ),
                  )
              ],),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
                title: Text('我的空间'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('用户中心'),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/user');
                },
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.settings),
                ),
                title: Text('我的设置'),
              ),
              Divider(),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: Text('右侧侧边栏'),
        ),
      ),
    );
  }
}
