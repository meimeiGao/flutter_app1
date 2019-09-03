import 'package:flutter/material.dart';
class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮演示页面'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){

            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,size: 30.0,),
        backgroundColor: Colors.green,
        foregroundColor:Colors.black,
        onPressed: (){

        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('普通按钮'),
                onPressed: (){

                },
              ),
              SizedBox(width: 10.0,),
              RaisedButton(
                child: Text('有颜色的按钮'),
                onPressed: (){

                },
                textColor:Colors.white,
                color: Colors.blue,
              ),
              SizedBox(width: 10.0,),
              RaisedButton(
                elevation: 10.0,
                child: Text('有阴影的按钮'),
                onPressed: (){

                },
              ),
              
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 150.0,
                height: 50.0,
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("宽度和高度"),
                  onPressed: (){

                  },
                ),
                
              )
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  // width: 150.0,
                  height: 30.0,
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                  
                     color: Colors.blue,
                    textColor: Colors.white,  
                    child: Text("自适应按钮"),
                    onPressed: (){
                        
                    },
                  ),
              ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: RaisedButton.icon(
                  color: Colors.blue,
                  textColor: Colors.white,
                  icon: Icon(Icons.search),
                  label: Text('带图标的按钮'),
                  onPressed: (){
                    
                  },
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: RaisedButton.icon(
                  color: Colors.blue,
                  textColor: Colors.white,
                  icon: Icon(Icons.search),
                  label: Text('圆角按钮'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                  onPressed: (){
                    
                  },
                ),
              ),
              Container(
                height: 60.0,
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("圆形按钮"),
                  splashColor: Colors.grey,//设置水波纹的颜色 
                  shape: CircleBorder(
                    side: BorderSide(color: Colors.blue)
                  ),
                  onPressed: (){

                  },
                ),
              )
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text('扁平化按钮'),//扁平化按钮跟凸起按钮很相似,只是默认的样式不太一样,凸起按钮有立体感
                onPressed: (){

                },
              ),
              SizedBox(width: 20.0,),
              OutlineButton(
                highlightedBorderColor:Colors.grey,
                child: Text('有边框按钮'),
                onPressed: (){

                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  height: 50.0,
                  child: OutlineButton(
                    child: Text("自适应图标"),
                    onPressed: (){
                      
                    },
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(//button 组件
                children: <Widget>[
                  RaisedButton(
                    child: Text('登录'),
                    onPressed: (){

                    },
                  ),
                  RaisedButton(
                    child: Text('注册'),
                    onPressed: (){

                    },
                  ),
                  MyButton(text: '我是button',width: 120.0,height: 40.0,pressed: (){
                    print('点我点我');
                  },)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  final pressed;
  final double height;
  final double width;
  const MyButton({this.text='',this.pressed=null,this.width=80.0,this.height=30.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: pressed,
      ),
    );
  }
}